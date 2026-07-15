--- include-files.lua – Pandoc filter to pull included Markdown files into a
--- main document. Simplified/self-contained variant of the official filter
--- (https://github.com/pandoc/lua-filters/tree/master/include-files), which
--- requires Pandoc >= 2.12 for its pandoc.path/pandoc.system modules. This
--- version drops the relative-image-path rewriting feature so it also runs
--- on older Pandoc (tested with 2.9), at the cost of that one feature.
---
--- Adapted from pandoc/lua-filters (https://github.com/pandoc/lua-filters).
--- Original copyright and MIT license notice, reproduced as required:
---
--- MIT License
---
--- Copyright (c) 2017-2021 pandoc Lua filters contributors
---
--- Permission is hereby granted, free of charge, to any person obtaining a copy
--- of this software and associated documentation files (the "Software"), to deal
--- in the Software without restriction, including without limitation the rights
--- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
--- copies of the Software, and to permit persons to whom the Software is
--- furnished to do so, subject to the following conditions:
---
--- The above copyright notice and this permission notice shall be included in all
--- copies or substantial portions of the Software.
---
--- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
--- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
--- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
--- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
--- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
--- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
--- SOFTWARE.
---
--- Modifications (simplification to drop the pandoc>=2.12 path/system
--- dependency) are part of this repository and covered by its own LICENSE.
---
--- Usage in a main.md file (paths are relative to where pandoc is invoked).
--- Keep this out of README.md — README.md is build/usage instructions only,
--- not part of the document itself:
---
---   ```{.include}
---   01_first_section.md
---   02_second_section.md
---   ```
---
--- Build with:  pandoc main.md --lua-filter=../include-files.lua -o out.pdf
--- (add --filter=mermaid-filter as well to render the Mermaid diagrams)

local List = require 'pandoc.List'

local function transclude(cb)
  if not cb.classes:includes('include') then
    return nil
  end

  local format = cb.attributes['format']
  local shift_by = tonumber(cb.attributes['shift-heading-level-by'] or '0')

  local blocks = List:new()
  for line in cb.text:gmatch('[^\r\n]+') do
    line = line:match('^%s*(.-)%s*$')
    if line ~= '' and line:sub(1, 2) ~= '//' then
      local fh = io.open(line, 'r')
      if not fh then
        io.stderr:write('include-files.lua: cannot open file "' .. line .. '"\n')
      else
        local contents = pandoc.read(fh:read('*a'), format, PANDOC_READER_OPTIONS).blocks
        fh:close()
        if shift_by ~= 0 then
          contents = pandoc.walk_block(pandoc.Div(contents), {
            Header = function(h) h.level = h.level + shift_by; return h end
          }).content
        end
        blocks:extend(contents)
      end
    end
  end
  return blocks
end

return {
  { CodeBlock = transclude }
}

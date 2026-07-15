## 3. Context and Scope

### 3.1 Business Context

```{.mermaid width=1000 scale=2}
C4Context
  title System Context — Internet Banking System (example)
  Person(customer, "Personal Banking Customer", "A customer of the bank")
  System(banking_system, "Internet Banking System", "Allows customers to view account info and make payments")
  System_Ext(mainframe, "Mainframe Banking System", "Stores all core banking information")
  System_Ext(email_system, "E-mail System", "Internal e-mail system")

  Rel(customer, banking_system, "Views balances, makes payments using")
  Rel(banking_system, mainframe, "Gets account info from, makes payments using")
  Rel(banking_system, email_system, "Sends e-mail using")
  Rel(email_system, customer, "Sends e-mails to")
```

\<Description of external systems/actors and the data exchanged\>

### 3.2 Technical Context

| Channel/Interface | Protocol   | Notes |
| ------------------ | ---------- | ----- |
| \<Interface 1\>       | \<e.g. HTTPS\> | \<mapping of input/output\> |

## 5. Building Block View

### 5.1 Whitebox Overall System

```mermaid
C4Container
  title Container diagram — Internet Banking System (example)
  Person(customer, "Personal Banking Customer")

  Container_Boundary(banking, "Internet Banking System") {
    Container(spa, "Single-Page App", "JavaScript, Angular", "Provides banking functionality via the browser")
    Container(mobile_app, "Mobile App", "C#, Xamarin", "Provides a subset of banking functionality on mobile")
    Container(api, "API Application", "Java, Spring Boot", "Provides banking functionality via API")
    ContainerDb(db, "Database", "SQL Database", "Stores user registration info, auth tokens, etc.")
  }

  System_Ext(mainframe, "Mainframe Banking System")

  Rel(customer, spa, "Uses", "HTTPS")
  Rel(customer, mobile_app, "Uses", "HTTPS")
  Rel(spa, api, "Uses", "JSON/HTTPS")
  Rel(mobile_app, api, "Uses", "JSON/HTTPS")
  Rel(api, db, "Reads from and writes to", "JDBC")
  Rel(api, mainframe, "Uses", "XML/HTTPS")
```

**Contained building blocks**

| Block | Responsibility |
| ----- | --------------- |
| Single-Page App | \<...\> |
| Mobile App      | \<...\> |
| API Application | \<...\> |
| Database        | \<...\> |

#### 5.1.1 \<Name black box 1\>

\<Purpose/Responsibility · Interface(s) · Quality characteristics · File location · Open issues\>

### 5.2 Level 2 — \<API Application\>

```mermaid
C4Component
  title Component diagram — API Application (example)
  Container_Boundary(api, "API Application") {
    Component(sign_in, "Sign-In Controller", "Rest Controller", "Handles sign-in requests")
    Component(accounts, "Accounts Controller", "Rest Controller", "Provides account summaries")
    Component(security, "Security Component", "Service", "Authentication/authorization logic")
    Component(mainframe_facade, "Mainframe Facade", "Service", "Wraps mainframe banking system calls")
  }
  ContainerDb_Ext(db, "Database")
  System_Ext(mainframe, "Mainframe Banking System")

  Rel(sign_in, security, "Uses")
  Rel(accounts, mainframe_facade, "Uses")
  Rel(security, db, "Reads/writes", "JDBC")
  Rel(mainframe_facade, mainframe, "Uses", "XML/HTTPS")
```

### 5.3 Level 3

\<Whitebox description of an individual component from Level 2, if it needs
further decomposition\>

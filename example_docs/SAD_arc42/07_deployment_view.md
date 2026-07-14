## 7. Deployment View

### 7.1 Infrastructure Level 1

```mermaid
C4Deployment
  title Deployment — Internet Banking System, Live (example)
  Deployment_Node(cust, "Customer's Computer", "Windows / macOS"){
    Deployment_Node(browser, "Web Browser", "Chrome, Firefox, Safari"){
      Container(spa, "Single-Page App", "JavaScript, Angular")
    }
  }
  Deployment_Node(dc, "Bank Data Center", ""){
    Deployment_Node(apisrv, "api-app-01..03", "Ubuntu 22.04"){
      Deployment_Node(tomcat, "Apache Tomcat", "Tomcat 10"){
        Container(api, "API Application", "Java, Spring Boot")
      }
    }
    Deployment_Node(dbsrv, "db-01", "Ubuntu 22.04"){
      Deployment_Node(dbms, "PostgreSQL", "PostgreSQL 16"){
        ContainerDb(db, "Database", "Relational schema")
      }
    }
  }
  Rel(spa, api, "Calls", "JSON/HTTPS")
  Rel_D(api, db, "Reads/writes", "JDBC")
```

**Mapping of building blocks to infrastructure**

\<Which container runs on which node, scaling/redundancy notes\>

### 7.2 Infrastructure Level 2

\<Detail for an individual infrastructure element, if needed\>

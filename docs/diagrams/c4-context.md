# C4 - Context

```mermaid
flowchart LR
    ADM[Administrator]
    LIB[Librarian]
    USR[User]
    SYS[[Library Management System]]
    MAIL[Email server]
    ADM --> SYS
    LIB --> SYS
    USR --> SYS
    SYS -->|reservation, due date and overdue notices| MAIL
```

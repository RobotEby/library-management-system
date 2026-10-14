# C4 - Containers

```mermaid
flowchart LR
    U[Users] --> FE[Frontend<br/>React + TypeScript]
    FE -->|REST + JWT| API[Spring Boot API<br/>modular monolith]
    API --> DB[(PostgreSQL)]
    API -->|SMTP| MAIL[Email server]
```

Monolith modules: `auth`, `users`, `catalog`, `circulation`, `reservations`, `fines`, `history`, `notifications`.
`circulation` may use `catalog`, `users`, `reservations` and `fines`; the reverse is not allowed.

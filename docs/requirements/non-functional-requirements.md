# Non-functional requirements

| ID | Category | Requirement |
|---|---|---|
| NFR01 | Security | JWT authentication, RBAC, input validation and auditing of sensitive actions |
| NFR02 | LGPD | Minimal data collection, consent record, retention policy and anonymization of old history |
| NFR03 | Performance | Paginated listings; common queries respond within 500 ms |
| NFR04 | Availability | Health checks and metrics exposed for monitoring |
| NFR05 | Observability | Structured (JSON) logs and Prometheus metrics |
| NFR06 | Maintainability | Modular monolith in layers, versioned migrations, API documented with OpenAPI |
| NFR07 | Integrity | Loans and returns are transactional; a copy is never in two states at once |
| NFR08 | Testability | Business rules covered by unit tests; integration tests against a real PostgreSQL (Testcontainers) |

# ADR-0002: PostgreSQL with Flyway

- **Status:** Accepted
- **Date:** 2026-10-13

## Context
The data is relational and circulation operations require transactional integrity. Searching by title and synopsis needs Portuguese language support.

## Decision
PostgreSQL as the main database, JPA/Hibernate for access and Flyway for versioned migrations (plain SQL). Search via Full-Text Search (`portuguese` configuration, GIN index). Critical integrity is also enforced in the database, such as the partial unique index that prevents two open loans of the same copy.

## Consequences
- Integrity rules also live in the database.
- Migrations are auditable and repeatable in any environment.
- Applied migrations cannot be edited; fixes become new versions.

# ADR-0003: JWT authentication and RBAC authorization

- **Status:** Accepted
- **Date:** 2026-10-13

## Context
There are three roles with distinct permissions (Administrator, Librarian, User) and a SPA frontend consuming a REST API.

## Decision
Spring Security with a short-lived JWT access token and a revocable refresh token. Role-based authorization with `@PreAuthorize` and ownership checks in the services (a user only accesses their own data). OIDC with an external provider is a possible evolution.

## Consequences
- Stateless API, simple to scale.
- Access token revocation depends on its short expiry; refresh tokens are stored in the database.

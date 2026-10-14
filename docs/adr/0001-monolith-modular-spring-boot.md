# ADR-0001: Modular monolith in Java/Spring Boot

- **Status:** Accepted
- **Date:** 2026-10-13

## Context
The system has a cohesive domain (catalog, circulation, reservations, fines) and starts with a small team. The project document recommends avoiding unnecessary complexity and keeping the door open for microservices.

## Decision
A single Java backend with Spring Boot, organized as a layered modular monolith (api, application, domain, infra). No Node.js in the backend. Modules communicate through service interfaces and internal events; dependencies are verified with ArchUnit.

## Consequences
- Simple deployment and debugging, local transactions for loans and returns.
- Modules with clear boundaries allow extracting services later.
- Requires discipline to respect module boundaries (mitigated with ArchUnit in CI).

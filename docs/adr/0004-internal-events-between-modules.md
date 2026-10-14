# ADR-0004: Internal events between modules

- **Status:** Accepted
- **Date:** 2026-10-13

## Context
A return triggers effects in other modules (reservation, notification, history). Direct calls would create circular coupling.

## Decision
Domain events published with Spring's `ApplicationEventPublisher` (for example, `BookReturnedEvent`) and consumed by listeners in the interested modules. Effects that must not fail the main transaction (email) run after commit.

## Consequences
- Decoupled modules; events can become messages (RabbitMQ/Kafka) if services are extracted.
- The flow is less explicit in the code; events need to be documented.

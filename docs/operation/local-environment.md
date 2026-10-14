# Local environment

1. `cp .env.example .env` and set a password.
2. `docker compose up -d` (PostgreSQL on host port **5434**).
3. Run the backend with `POSTGRES_USER`, `POSTGRES_PASSWORD` and `POSTGRES_DB` set. Flyway applies the migrations on startup:

```bash
cd backend
./mvnw spring-boot:run
```

# Business rules

Numeric values are configurable defaults, not hard-coded.

| Setting | Default | Description |
|---|---|---|
| `loan_period_days` | 14 | Default loan period |
| `max_loans` | 3 | Simultaneous loans per user |
| `daily_fine` | 1.00 | Fine per overdue day (R$) |
| `max_renewals` | 2 | Renewals per loan |
| `renewal_days` | 7 | Days added per renewal |
| `reservation_pickup_hours` | 48 | Time to pick up a reserved copy |

## Loan
- **BR01** Only `AVAILABLE` copies can be loaned.
- **BR02** The user must be active, with no pending fine and no overdue loan.
- **BR03** Limit of simultaneous loans per user (`max_loans`).
- **BR04** Default loan period of `loan_period_days`.
- **BR05** A reference-only copy (`REFERENCE_ONLY`) cannot be loaned.

## Return and fine
- **BR06** Daily fine (`daily_fine`) per overdue day, capped at the book's value.
- **BR07** The due date itself does not count as overdue.
- **BR08** A return frees the copy. If there is an active reservation in the queue, the copy becomes `RESERVED` and the first in the queue is notified.

## Reservation
- **BR09** Only titles with no available copy can be reserved.
- **BR10** The queue is first-come, first-served (FIFO).
- **BR11** The user has `reservation_pickup_hours` to pick up the copy; after that the reservation expires and moves to the next in the queue.
- **BR12** A user cannot reserve a title they already have on loan.

## Renewal
- **BR13** At most `max_renewals` renewals, of `renewal_days` each.
- **BR14** No renewal if there is a reservation in the queue, if the loan is overdue, or if the user has a pending fine.

## Permissions and history
- **BR15** The Administrator can do everything. The Librarian manages the catalog and circulation, but not roles. The User searches the catalog, reserves, renews and sees their own data.
- **BR16** Every movement creates an immutable history record.

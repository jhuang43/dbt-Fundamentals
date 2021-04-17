select
    id AS payment_id,
    orderid AS order_id,
    paymentmethod,
    status,
    (amount / 100) AS amount,
    created AS created_at
from `dbt-tutorial`.stripe.payment
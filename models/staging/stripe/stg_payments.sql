select
    id AS payment_id,
    orderid AS order_id,
    paymentmethod AS payment_method,
    status,
    {{ cents_to_dollar ('amount') }} AS amount,
    created AS created_at
from {{ source ('stripe','payment')}}
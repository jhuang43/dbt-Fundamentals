{{ config (
    materialized = 'view'
)}}

SELECT 
    orders.order_id, 
    orders.customer_id, 
    orders.order_date, 
    SUM(payments.amount) AS amount

FROM {{ ref ('stg_orders') }} AS orders
    LEFT JOIN {{ref ('stg_payments') }} AS payments USING (order_id)

WHERE (payments.status = 'success')
GROUP BY order_id, customer_id, order_date
ORDER BY CUSTOMER_ID
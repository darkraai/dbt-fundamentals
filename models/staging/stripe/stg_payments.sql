with payments as (
    select orderid as order_id, amount / 100 as amount, paymentmethod as payment_method, status, created as created_at
    from raw.stripe.payment
)

select * from payments

{% docs order_status %}
	
One of the following values: 

| status         | definition                                       |
|----------------|--------------------------------------------------|
| placed         | Order placed, not yet shipped                    |
| shipped        | Order has been shipped, not yet been delivered   |
| completed      | Order has been received by customers             |
| return pending | Customer indicated they want to return this item |
| returned       | Item has been returned                           |

{% enddocs %}

{% docs payment_status %}

One of the following values:

| status    | definition                        |
|-----------|-----------------------------------|
| success   | Payment type was successful       |
| fail      | Payment type was not successful   |

{% enddocs %}

<!--use "dbt docs generate" to view this in a more friendly format-->
SELECT 
	c.customer_id,
    c.first_name,
    o.order_id
From customers c
Left JOIN orders o
	on c.customer_id = o.customer_id
order by c.customer_id
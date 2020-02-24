SELECT * FROM sql_store.order_items;

-- used subquery to get a list of orders  for lettuce Note:product_id = 3

SELECT
	customer_id,
    first_name,
    last_name
From customers
Where customer_id In
(SELECT o.customer_id 
FROM order_items oi
Join orders o USING (order_id)
where product_id = 3);

-- using joins to get a list of orders for lettuce Note:product_id = 3
Select 
	Distinct customer_id,
    first_name,
    last_name
From customers c
Join orders o USING(customer_id)
Join order_items oi USING(order_id)
WHERE product_id = 3;


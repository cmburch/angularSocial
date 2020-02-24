SELECT * FROM sql_store.order_items;

-- used subquery to get a list of orders  for lettuce Note:product_id = 3

SELECT o.customer_id ,oi.product_id
FROM order_items oi
Join orders o USING (order_id)
where product_id = 3;

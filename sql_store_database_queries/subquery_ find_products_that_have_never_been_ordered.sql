use sql_store;
-- find products that have never been order

Select *
From products p
Where Not Exists
(
	Select product_id
	From order_items oi
	where product_id = p.product_id
);

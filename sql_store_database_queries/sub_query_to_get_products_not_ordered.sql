use sql_store;

SELECT *
FROM products
Where product_id NOT IN (
	Select Distinct product_id
    From order_items
);

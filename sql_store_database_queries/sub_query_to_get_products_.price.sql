SELECT *
FROM products
Where unit_price > (
-- this returns one result and compare to the other unit_price
select unit_price
From products
where product_id = 3
);


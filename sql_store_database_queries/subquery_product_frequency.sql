use sql_store;

Select
	p.product_id,
    p.name,
    Count(*) AS orders,
    If (Count(*) > 1, 'Many','Once') as frequency_count
From products p
Join order_items USING(product_id)
Group by product_id,name


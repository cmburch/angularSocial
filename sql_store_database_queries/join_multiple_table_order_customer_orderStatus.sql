SELECT  
	o.order_id,
    o.order_date,
    c.first_name,
    c.last_name,
    os.name AS status
From Orders o
Join customers c On c.customer_id = o.customer_id
Join order_statuses os on o.status = os.order_status_id
SELECT order_id,first_name,last_name,orders.customer_id
From Orders
Join Customers
Where orders.customer_id = customers.customer_id

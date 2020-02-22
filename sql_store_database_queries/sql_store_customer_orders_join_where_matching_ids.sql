SELECT order_id,first_name,last_name,orders.customer_id
From Orders
Join Customers On orders.customer_id = customers.customer_id

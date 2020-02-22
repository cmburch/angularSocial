use sql_store;

Select 
	first_name,
    last_name,
    points,
    ( points + 10 ) * 100 AS discount_factor
From customers


use sql_invoicing;

-- find clients without invoices

Select *
From clients
Where client_id NOT IN
(SELECT  Distinct client_id
FROM  invoices)

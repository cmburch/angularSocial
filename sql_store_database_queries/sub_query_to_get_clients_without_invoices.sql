use sql_invoicing;

-- find clients without invoices

Select *
From clients
Where client_id NOT IN
(SELECT  Distinct client_id
FROM  invoices);


-- find clients without invoice ,using join

SELECT *
FROM clients
Left JOIN invoices 
    USING (client_id)
WHERE invoice_id IS NULL

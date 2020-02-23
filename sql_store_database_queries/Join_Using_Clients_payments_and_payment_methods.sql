SELECT
  c.name,
  p.amount,
  p.date,
  pm.name AS 'payment method'
FROM payments p
JOIN clients c USING (client_id)
LEFT JOIN payment_methods pm
	on p.payment_method = pm.payment_method_id
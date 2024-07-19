
-- total payments from each customer after a certain date 
SELECT 
	customerNumber,
    customerName,
    SUM(amount) AS totalOrderValue
FROM payments
JOIN customers USING (customerNumber)
WHERE paymentDate > '2002-02-02'
GROUP BY customerNumber;
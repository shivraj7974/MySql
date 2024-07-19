-- value of each unique order and its customer no , customer name , sorted by total order value  

SELECT 
		orderNumber,customerNumber,customerName,
        SUM(quantityOrdered*priceEach) AS orderTotal
	FROM orderdetails
    JOIN orders USING (orderNumber)
    JOIN customers USING (customerNumber)
    GROUP BY orderNumber
    ORDER BY orderTotal DESC
-- value of each unique order sorted by total order value  

SELECT 
		orderNumber,
        SUM(quantityOrdered*priceEach) AS orderTotal
	FROM orderdetails
    GROUP BY orderNumber
    ORDER BY orderTotal DESC
-- value of each unique order and its customer no , customer name , sorted by total order value  

SELECT 
		orderNumber,
		employeeNumber,
        firstName AS employeeName,
        customerNumber,
        customerName,
        SUM(quantityOrdered*priceEach) AS orderTotal
	FROM orderdetails
    JOIN orders USING (orderNumber)
    JOIN customers USING (customerNumber)
    JOIN employees
    ON customers.salesRepEmployeeNumber = employees.employeeNumber
    GROUP BY orderNumber
    ORDER BY orderTotal DESC
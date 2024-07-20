select 
	COUNT(orderNumber) AS numberOfOrders,
    employeeNumber,
    firstName AS employeeName
FROM orders
join customers using (customerNumber)
join employees
   on customers.salesRepEmployeeNumber = employees.employeeNumber
group by employeeNumber
-- count of orders place by each customer and sale employee for that customer
select 
	customerNumber,
    customerName,
    firstName as employeeName,
    COUNT(*) AS cntOrdersByCustomer
from orders
join customers using (customerNumber)
join employees
	ON customers.salesRepEmployeeNumber = employees.employeeNumber
group by customerNumber;
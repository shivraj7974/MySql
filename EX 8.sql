-- find customer from france whose total order value > 80000 across all their orders
select 
	 c.customerNumber,
     c.customerName,
     SUM(od.quantityOrdered * od.priceEach) AS totalOrderValue
from customers c
join orders o using (customerNumber)
join orderdetails od USING (orderNumber)
where country = "France"
group by 
		c.customerNumber,
        c.customerName
having totalOrderValue > 80000
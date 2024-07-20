-- country wise - count of order
select country ,
	COUNT(*) AS totalOrders
FROM orders 
JOIN customers using (customerNumber)
group by country;

-- country wise - count of orders on each date
select country,
	orderDate,
    COUNT(*) AS totalOrders
from orders 
join customers using (customerNumber)
group by country,orderDate
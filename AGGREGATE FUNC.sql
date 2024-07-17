select 
	max(amount) AS highestPayment,
    min(amount) AS lowestPayment,
    avg(amount) AS AveragePayment
from payments;

-- query 2--
select 
	count(*) AS totalOrders,
    count(requiredData) AS totalOrders,
    count(shippedData) AS shippedOrders
from orders;
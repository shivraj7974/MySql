select 
	count(*) AS totalOrders,
    count(requiredDate) AS totalOrders,
    count(shippedDate) AS shippedOrders
from orders;
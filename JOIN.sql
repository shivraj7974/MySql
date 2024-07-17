select payments.customerNumber,
		paymentDate,
        amount,
        customerName
from payments
INNER Join customers
		on payments.customerNumber=customers.customerNumber;
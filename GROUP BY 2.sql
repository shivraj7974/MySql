select 
	officeCode,
    city,
    state,
	count(employeeNumber) AS employeeCnt
from employees
    join offices using (officeCode)
group by officeCode
    
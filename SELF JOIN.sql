SELECT emp.employeeNumber,
		emp.firstName,
        emp.jobTitle,
        mgr.firstName AS "Manager Name",
        mgr.jobTitle AS "ManagerTitle"
        
	from employees emp
    join employees mgr
				ON emp.reportsTo=mgr.employeeNumber
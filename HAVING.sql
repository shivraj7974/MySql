SELECT 
		productline,
        count(*) AS productCount
	FROM products
		group by productLine
	having productCount > 15
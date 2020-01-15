SELECT *
FROM 
	dbo.Customer as cu
WHERE not exists
(
	SELECT*
	FROM
		dbo.Product as pr
	WHERE not exists
	(
		SELECT *
		FROM
			dbo.Purchase as pu,
			(
				SELECT cu.CustomerId, cu.CustomerName, SUM(pu.Qty) as NBpurchase
				FROM dbo.Customer as cu,
					dbo.Purchase as pu
				WHERE
					cu.CustomerId = pu.CustomerId
				GROUP BY cu.CustomerId, cu.CustomerName
			) as temp
		WHERE
			pu.ProductId = pr.ProductId
			and pu.CustomerId = cu.CustomerId
			and temp.CustomerId = cu.CustomerId
			and temp.NBpurchase > 50
		
	)
)



	

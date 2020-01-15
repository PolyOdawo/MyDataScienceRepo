SELECT 
	x2.CustomerCategoryName,
	x2.MaxLoss,
	x3.CustomerName,
	x3.CustomerID
FROM 
	(
	SELECT 
		x1.CustomerCategoryName,
		MAX(x1.MaxLoss) as MaxLoss
	FROM 
		(
		SELECT 
			cu.CustomerID, 
			cu.CustomerName,
			cc.CustomerCategoryName, 
			SUM(ol.Quantity * ol.UnitPrice) as MaxLoss
		FROM 
			Sales.Orders as o,
			Sales.OrderLines as ol,
			Sales.CustomerCategories as cc,
			Sales.Customers as cu
		WHERE 
			cu.CustomerID = o.CustomerID
			and cu.CustomerCategoryID = cc.CustomerCategoryID
			and o.OrderID = ol.OrderID
			and not exists
		(
			SELECT *
			FROM 
				Sales.Invoices as i 
			WHERE 
				i.OrderID = o.OrderID
		) GROUP BY 
				cu.CustomerID, 
				cu.CustomerName,
				cc.CustomerCategoryName
		) as x1
	GROUP BY 
			x1.CustomerCategoryName
	) as x2,
	(
	SELECT 
		cu.CustomerID, 
		cu.CustomerName,
		cc.CustomerCategoryName, 
		SUM(ol.Quantity * ol.UnitPrice) as MaxLoss
	FROM 
		Sales.Orders as o,
		Sales.OrderLines as ol,
		Sales.CustomerCategories as cc,
		Sales.Customers as cu
	WHERE 
		cu.CustomerID = o.CustomerID
		and cu.CustomerCategoryID = cc.CustomerCategoryID
		and o.OrderID = ol.OrderID
		and not exists
	(
		SELECT *
		FROM 
			Sales.Invoices as i 
		WHERE 
			i.OrderID = o.OrderID
	) GROUP BY 
			cu.CustomerID, 
			cu.CustomerName,
			cc.CustomerCategoryName
	) as x3
WHERE x2.MaxLoss = x3.MaxLoss
ORDER BY x2.MaxLoss DESC
	
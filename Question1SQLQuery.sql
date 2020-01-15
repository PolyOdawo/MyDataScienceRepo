SELECT *
FROM 
	Sales.Orders as so,
	Sales.Invoices as si
WHERE 
	so.CustomerID = si.CustomerID
	and so.OrderID <> so.OrderID


SELECT 
	temp.CustomerID,
	temp.CustomerName,
	temp.TotalNBOrders,
	temp.TotalNBInvoices,
	temp.OrdersTotalValue,
	temp.InvoicesTotalValue,
	ABS(temp.InvoicesTotalValue - temp.OrdersTotalValue) as AbsoluteValueDifference
FROM 
(
SELECT 
	cu.CustomerID,
	cu.CustomerName,
	(
	SELECT COUNT(so.OrderID) 
	FROM 
		Sales.Orders as so,
		Sales.Invoices as si
	WHERE 
		cu.CustomerID = so.CustomerID
		and so.OrderID = si.OrderID 	
	) as TotalNBOrders,
	(
	SELECT COUNT(si.InvoiceID) 
	FROM 
		Sales.Orders as so,
		Sales.Invoices as si
	WHERE 
		cu.CustomerID = so.CustomerID
		and so.OrderID = si.OrderID 	
	) as TotalNBInvoices,
	(
	SELECT  
		SUM(il.Quantity * il.UnitPrice) 
	FROM 
		Sales.Invoices as si, 
		Sales.InvoiceLines as il
	WHERE 
		cu.CustomerID = si.CustomerID
		and si.InvoiceID = il.InvoiceID 
	) as InvoicesTotalValue, 
	(
	SELECT  
		SUM(ol.Quantity * ol.UnitPrice) 
	FROM 
		Sales.Invoices as si, 
		Sales.OrderLines as ol
	WHERE 
		cu.CustomerID = si.CustomerID 
		and si.OrderID = ol.OrderID 
	) as OrdersTotalValue

FROM 
	Sales.Customers as cu
) as temp


ORDER BY 
		ABS(temp.InvoicesTotalValue - temp.OrdersTotalValue) DESC, 
		temp.TotalNBOrders, 
		temp.CustomerName


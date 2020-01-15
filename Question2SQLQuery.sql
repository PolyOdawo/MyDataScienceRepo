SELECT *
FROM 
	Sales.Customers as cu,
	Sales.InvoiceLines as il,
	Sales.Invoices as si
WHERE 
	cu.CustomerID = si.CustomerID
	and si.InvoiceID = il.InvoiceID
	and cu.CustomerID = 1060
ORDER BY 
	il.InvoiceLineID


update Sales.InvoiceLines
set UnitPrice = 260
where InvoiceLineID = 225394

----------------------------------------------
update Sales.InvoiceLines
set UnitPrice = 240
where InvoiceLineID = 225394
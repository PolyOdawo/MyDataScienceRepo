-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE <Procedure_Name, sysname, ProcedureName> 
	-- Add the parameters for the stored procedure here
	@Choice int,
	@Year int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Choice=1
	IF @Year IS NOT NULL
	SELECT
			CU.CustomerName,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 1
						AND YEAR(INV.InvoiceDate) = @Year					
			),0
			) as January,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 2
						AND YEAR(INV.InvoiceDate) = @Year					
			),0
			) as February,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 3
						AND YEAR(INV.InvoiceDate) = @Year					
			),0
			) as March,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 4
						AND YEAR(INV.InvoiceDate) = @Year					
			),0
			) as April,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 5
						AND YEAR(INV.InvoiceDate) = @Year					
			),0
			) as May,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 6
						AND YEAR(INV.InvoiceDate) = @Year					
			),0
			) as June,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 7
						AND YEAR(INV.InvoiceDate) = @Year					
			),0
			) as July,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 8
						AND YEAR(INV.InvoiceDate) = @Year					
			),0
			) as August,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 9
						AND YEAR(INV.InvoiceDate) = @Year					
			),0
			) as September,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 10
						AND YEAR(INV.InvoiceDate) = @Year					
			),0
			) as October,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 11
						AND YEAR(INV.InvoiceDate) = @Year					
			),0
			) as November,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 12
						AND YEAR(INV.InvoiceDate) = @Year					
			),0
			) as December
	FROM Sales.Customers as CU
	ORDER BY CU.CustomerName ASC;
	ELSE
	SELECT
			CU.CustomerName,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 1
						AND YEAR(INV.InvoiceDate) = 2013					
			),0
			) as January,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 2
						AND YEAR(INV.InvoiceDate) = 2013					
			),0
			) as February,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 3
						AND YEAR(INV.InvoiceDate) = 2013					
			),0
			) as March,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 4
						AND YEAR(INV.InvoiceDate) = 2013					
			),0
			) as April,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 5
						AND YEAR(INV.InvoiceDate) = 2013					
			),0
			) as May,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 6
						AND YEAR(INV.InvoiceDate) = 2013					
			),0
			) as June,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 7
						AND YEAR(INV.InvoiceDate) = 2013					
			),0
			) as July,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 8
						AND YEAR(INV.InvoiceDate) = 2013					
			),0
			) as August,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 9
						AND YEAR(INV.InvoiceDate) = 2013					
			),0
			) as September,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 10
						AND YEAR(INV.InvoiceDate) = 2013					
			),0
			) as October,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 11
						AND YEAR(INV.InvoiceDate) = 2013					
			),0
			) as November,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 12
						AND YEAR(INV.InvoiceDate) = 2013					
			),0
			) as December
	FROM Sales.Customers as CU
	ORDER BY CU.CustomerName ASC;
ELSE IF @Choice=2
	IF @Year IS NOT NULL
	SELECT
			CU.CustomerName,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) in (1,2,3)
						AND YEAR(INV.InvoiceDate) = @Year					
			),0
			) as Q1,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) in (4,5,6)
						AND YEAR(INV.InvoiceDate) = @Year					
			),0
			) as Q2,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) in (7,8,9)
						AND YEAR(INV.InvoiceDate) = @Year					
			),0
			) as Q3,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) in (10,11,12)
						AND YEAR(INV.InvoiceDate) = @Year					
			),0
			) as Q4
	FROM Sales.Customers as CU
	ORDER BY CU.CustomerName ASC;
	ELSE
	SELECT
			CU.CustomerName,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) in (1,2,3)
						AND YEAR(INV.InvoiceDate) = 2013					
			),0
			) as Q1,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) in (4,5,6)
						AND YEAR(INV.InvoiceDate) = 2013					
			),0
			) as Q2,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) in (7,8,9)
						AND YEAR(INV.InvoiceDate) = 2013					
			),0
			) as Q3,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) in (10,11,12)
						AND YEAR(INV.InvoiceDate) = 2013					
			),0
			) as Q4
	FROM Sales.Customers as CU
	ORDER BY CU.CustomerName ASC;
ELSE IF @Choice=3
	SELECT
			CU.CustomerName,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND YEAR(INV.InvoiceDate) = 2013
			),0
			) as Total2013,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND YEAR(INV.InvoiceDate) = 2014
			),0
			) as Total2014,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND YEAR(INV.InvoiceDate) = 2015
			),0
			) as Total2015,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND YEAR(INV.InvoiceDate) = 2016
			),0
			) as Total2016
	FROM Sales.Customers as CU
	ORDER BY CU.CustomerName ASC;
ELSE
	SELECT
			CU.CustomerName,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 1
						AND YEAR(INV.InvoiceDate) = 2013					
			),0
			) as January,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 2
						AND YEAR(INV.InvoiceDate) = 2013					
			),0
			) as February,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 3
						AND YEAR(INV.InvoiceDate) = 2013					
			),0
			) as March,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 4
						AND YEAR(INV.InvoiceDate) = 2013					
			),0
			) as April,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 5
						AND YEAR(INV.InvoiceDate) = 2013					
			),0
			) as May,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 6
						AND YEAR(INV.InvoiceDate) = 2013					
			),0
			) as June,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 7
						AND YEAR(INV.InvoiceDate) = 2013					
			),0
			) as July,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 8
						AND YEAR(INV.InvoiceDate) = 2013					
			),0
			) as August,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 9
						AND YEAR(INV.InvoiceDate) = 2013					
			),0
			) as September,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 10
						AND YEAR(INV.InvoiceDate) = 2013					
			),0
			) as October,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 11
						AND YEAR(INV.InvoiceDate) = 2013					
			),0
			) as November,
			ISNULL((
				SELECT	SUM(IL.Quantity * IL.UnitPrice)
				FROM	Sales.Invoices as INV,
						Sales.InvoiceLines as IL
				WHERE
						CU.CustomerID = INV.CustomerID
						AND IL.InvoiceID = INV.InvoiceID
						AND MONTH(INV.InvoiceDate) = 12
						AND YEAR(INV.InvoiceDate) = 2013					
			),0
			) as December
	FROM Sales.Customers as CU
	ORDER BY CU.CustomerName ASC;
END
GO

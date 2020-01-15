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
CREATE PROCEDURE ReprotCustomerTurnover 
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
	
		IF @Year is not null
		SELECT
				cu.CustomerName,
				ISNULL((
					SELECT	
						SUM(il.Quantity * il.UnitPrice)
					FROM 
						Sales.Invoices as i,
						Sales.InvoiceLines as il
					WHERE
						cu.CustomerID = i.CustomerID
						and il.InvoiceID = i.InvoiceID
						and MONTH(i.InvoiceDate) = 1
						and YEAR(i.InvoiceDate) = @Year
				) ,0) as Jan,
				ISNULL((
					SELECT	
						SUM(il.Quantity * il.UnitPrice)
					FROM 
						Sales.Invoices as i,
						Sales.InvoiceLines as il
					WHERE
						cu.CustomerID = i.CustomerID
						and il.InvoiceID = i.InvoiceID
						and MONTH(i.InvoiceDate) = 2
						and YEAR(i.InvoiceDate) = @Year
				) ,0) as Feb,
				ISNULL((
					SELECT	
						SUM(il.Quantity * il.UnitPrice)
					FROM 
						Sales.Invoices as i,
						Sales.InvoiceLines as il
					WHERE
						cu.CustomerID = i.CustomerID
						and il.InvoiceID = i.InvoiceID
						and MONTH(i.InvoiceDate) = 3
						and YEAR(i.InvoiceDate) = @Year
				) ,0) as Mar,
				ISNULL((
					SELECT	
						SUM(il.Quantity * il.UnitPrice)
					FROM 
						Sales.Invoices as i,
						Sales.InvoiceLines as il
					WHERE
						cu.CustomerID = i.CustomerID
						and il.InvoiceID = i.InvoiceID
						and MONTH(i.InvoiceDate) = 4
						and YEAR(i.InvoiceDate) = @Year
				) ,0) as April,
				ISNULL((
					SELECT	
						SUM(il.Quantity * il.UnitPrice)
					FROM 
						Sales.Invoices as i,
						Sales.InvoiceLines as il
					WHERE
						cu.CustomerID = i.CustomerID
						and il.InvoiceID = i.InvoiceID
						and MONTH(i.InvoiceDate) = 5
						and YEAR(i.InvoiceDate) = @Year
				) ,0) as May,
				ISNULL((
					SELECT	
						SUM(il.Quantity * il.UnitPrice)
					FROM 
						Sales.Invoices as i,
						Sales.InvoiceLines as il
					WHERE
						cu.CustomerID = i.CustomerID
						and il.InvoiceID = i.InvoiceID
						and MONTH(i.InvoiceDate) = 6
						and YEAR(i.InvoiceDate) = @Year
				) ,0) as Jun,
				ISNULL((
					SELECT	
						SUM(il.Quantity * il.UnitPrice)
					FROM 
						Sales.Invoices as i,
						Sales.InvoiceLines as il
					WHERE
						cu.CustomerID = i.CustomerID
						and il.InvoiceID = i.InvoiceID
						and MONTH(i.InvoiceDate) = 7
						and YEAR(i.InvoiceDate) = @Year
				) ,0) as Jul,
				ISNULL((
					SELECT	
						SUM(il.Quantity * il.UnitPrice)
					FROM 
						Sales.Invoices as i,
						Sales.InvoiceLines as il
					WHERE
						cu.CustomerID = i.CustomerID
						and il.InvoiceID = i.InvoiceID
						and MONTH(i.InvoiceDate) = 8
						and YEAR(i.InvoiceDate) = @Year
				) ,0) as Aug,
				ISNULL((
					SELECT	
						SUM(il.Quantity * il.UnitPrice)
					FROM 
						Sales.Invoices as i,
						Sales.InvoiceLines as il
					WHERE
						cu.CustomerID = i.CustomerID
						and il.InvoiceID = i.InvoiceID
						and MONTH(i.InvoiceDate) = 9
						and YEAR(i.InvoiceDate) = @Year
				) ,0) as Sep,
				ISNULL((
					SELECT	
						SUM(il.Quantity * il.UnitPrice)
					FROM 
						Sales.Invoices as i,
						Sales.InvoiceLines as il
					WHERE
						cu.CustomerID = i.CustomerID
						and il.InvoiceID = i.InvoiceID
						and MONTH(i.InvoiceDate) = 10
						and YEAR(i.InvoiceDate) = @Year
				) ,0) as Oct,
				ISNULL((
					SELECT	
						SUM(il.Quantity * il.UnitPrice)
					FROM 
						Sales.Invoices as i,
						Sales.InvoiceLines as il
					WHERE
						cu.CustomerID = i.CustomerID
						and il.InvoiceID = i.InvoiceID
						and MONTH(i.InvoiceDate) = 11
						and YEAR(i.InvoiceDate) = @Year
				) ,0) as Nov,
				ISNULL((
					SELECT	
						SUM(il.Quantity * il.UnitPrice)
					FROM 
						Sales.Invoices as i,
						Sales.InvoiceLines as il
					WHERE
						cu.CustomerID = i.CustomerID
						and il.InvoiceID = i.InvoiceID
						and MONTH(i.InvoiceDate) = 12
						and YEAR(i.InvoiceDate) = @Year
				) ,0) as Dec
		FROM 
			Sales.Customers as cu
		ORDER BY 
			cu.CustomerName;
	
		ELSE
		
			SELECT
				cu.CustomerName,
					ISNULL((
						SELECT	
							SUM(il.Quantity * il.UnitPrice)
						FROM 
							Sales.Invoices as i,
							Sales.InvoiceLines as il
						WHERE
							cu.CustomerID = i.CustomerID
							and il.InvoiceID = i.InvoiceID
							and MONTH(i.InvoiceDate) = 1
							and YEAR(i.InvoiceDate) = 2013
					) ,0) as Jan,
					ISNULL((
						SELECT	
							SUM(il.Quantity * il.UnitPrice)
						FROM 
							Sales.Invoices as i,
							Sales.InvoiceLines as il
						WHERE
							cu.CustomerID = i.CustomerID
							and il.InvoiceID = i.InvoiceID
							and MONTH(i.InvoiceDate) = 2
							and YEAR(i.InvoiceDate) = 2013
					) ,0) as Feb,
					ISNULL((
						SELECT	
							SUM(il.Quantity * il.UnitPrice)
						FROM 
							Sales.Invoices as i,
							Sales.InvoiceLines as il
						WHERE
							cu.CustomerID = i.CustomerID
							and il.InvoiceID = i.InvoiceID
							and MONTH(i.InvoiceDate) = 3
							and YEAR(i.InvoiceDate) = 2013
					) ,0) as Mar,
					ISNULL((
						SELECT	
							SUM(il.Quantity * il.UnitPrice)
						FROM 
							Sales.Invoices as i,
							Sales.InvoiceLines as il
						WHERE
							cu.CustomerID = i.CustomerID
							and il.InvoiceID = i.InvoiceID
							and MONTH(i.InvoiceDate) = 4
							and YEAR(i.InvoiceDate) = 2013
					) ,0) as April,
					ISNULL((
						SELECT	
							SUM(il.Quantity * il.UnitPrice)
						FROM 
							Sales.Invoices as i,
							Sales.InvoiceLines as il
						WHERE
							cu.CustomerID = i.CustomerID
							and il.InvoiceID = i.InvoiceID
							and MONTH(i.InvoiceDate) = 5
							and YEAR(i.InvoiceDate) = 2013
					) ,0) as May,
					ISNULL((
						SELECT	
							SUM(il.Quantity * il.UnitPrice)
						FROM 
							Sales.Invoices as i,
							Sales.InvoiceLines as il
						WHERE
							cu.CustomerID = i.CustomerID
							and il.InvoiceID = i.InvoiceID
							and MONTH(i.InvoiceDate) = 6
							and YEAR(i.InvoiceDate) = 2013
					) ,0) as Jun,
					ISNULL((
						SELECT	
							SUM(il.Quantity * il.UnitPrice)
						FROM 
							Sales.Invoices as i,
							Sales.InvoiceLines as il
						WHERE
							cu.CustomerID = i.CustomerID
							and il.InvoiceID = i.InvoiceID
							and MONTH(i.InvoiceDate) = 7
							and YEAR(i.InvoiceDate) = 2013
					) ,0) as Jul,
					ISNULL((
						SELECT	
							SUM(il.Quantity * il.UnitPrice)
						FROM 
							Sales.Invoices as i,
							Sales.InvoiceLines as il
						WHERE
							cu.CustomerID = i.CustomerID
							and il.InvoiceID = i.InvoiceID
							and MONTH(i.InvoiceDate) = 8
							and YEAR(i.InvoiceDate) = 2013
					) ,0) as Aug,
					ISNULL((
						SELECT	
							SUM(il.Quantity * il.UnitPrice)
						FROM 
							Sales.Invoices as i,
							Sales.InvoiceLines as il
						WHERE
							cu.CustomerID = i.CustomerID
							and il.InvoiceID = i.InvoiceID
							and MONTH(i.InvoiceDate) = 9
							and YEAR(i.InvoiceDate) = 2013
					) ,0) as Sep,
					ISNULL((
						SELECT	
							SUM(il.Quantity * il.UnitPrice)
						FROM 
							Sales.Invoices as i,
							Sales.InvoiceLines as il
						WHERE
							cu.CustomerID = i.CustomerID
							and il.InvoiceID = i.InvoiceID
							and MONTH(i.InvoiceDate) = 10
							and YEAR(i.InvoiceDate) = 2013
					) ,0) as Oct,
					ISNULL((
						SELECT	
							SUM(il.Quantity * il.UnitPrice)
						FROM 
							Sales.Invoices as i,
							Sales.InvoiceLines as il
						WHERE
							cu.CustomerID = i.CustomerID
							and il.InvoiceID = i.InvoiceID
							and MONTH(i.InvoiceDate) = 11
							and YEAR(i.InvoiceDate) = 2013
					) ,0) as Nov,
					ISNULL((
						SELECT	
							SUM(il.Quantity * il.UnitPrice)
						FROM 
							Sales.Invoices as i,
							Sales.InvoiceLines as il
						WHERE
							cu.CustomerID = i.CustomerID
							and il.InvoiceID = i.InvoiceID
							and MONTH(i.InvoiceDate) = 12
							and YEAR(i.InvoiceDate) = 2013
					) ,0) as Dec
			FROM 
				Sales.Customers as cu
			ORDER BY 
				cu.CustomerName;
	

	ELSE IF @Choice = 2
			IF @Year is not null
			SELECT
				CU.CustomerName,
				ISNULL((
					SELECT	SUM(il.Quantity * il.UnitPrice)
					FROM	Sales.Invoices as i,
							Sales.InvoiceLines as il
					WHERE
							cu.CustomerID = i.CustomerID
							AND il.InvoiceID = i.InvoiceID
							AND MONTH(i.InvoiceDate) in (1,2,3)
							AND YEAR(i.InvoiceDate) = @Year					
				),0
				) as Q1,
				ISNULL((
					SELECT	SUM(il.Quantity * il.UnitPrice)
					FROM	Sales.Invoices as i,
							Sales.InvoiceLines as il
					WHERE
							cu.CustomerID = i.CustomerID
							AND IL.InvoiceID = i.InvoiceID
							AND MONTH(i.InvoiceDate) in (4,5,6)
							AND YEAR(i.InvoiceDate) = @Year					
				),0
				) as Q2,
				ISNULL((
					SELECT	SUM(il.Quantity * il.UnitPrice)
					FROM	Sales.Invoices as i,
							Sales.InvoiceLines as il
					WHERE
							CU.CustomerID = i.CustomerID
							AND il.InvoiceID = i.InvoiceID
							AND MONTH(i.InvoiceDate) in (7,8,9)
							AND YEAR(i.InvoiceDate) = @Year					
				),0
				) as Q3,
				ISNULL((
					SELECT	SUM(il.Quantity * il.UnitPrice)
					FROM	Sales.Invoices as i,
							Sales.InvoiceLines as il
					WHERE
							cu.CustomerID = i.CustomerID
							AND il.InvoiceID = il.InvoiceID
							AND MONTH(i.InvoiceDate) in (10,11,12)
							AND YEAR(i.InvoiceDate) = @Year					
				),0
				) as Q4
			FROM 
				Sales.Customers as cu
			ORDER BY 
				cu.CustomerName;

			ELSE 
			SELECT
				CU.CustomerName,
				ISNULL((
					SELECT	SUM(il.Quantity * il.UnitPrice)
					FROM	Sales.Invoices as i,
							Sales.InvoiceLines as il
					WHERE
							cu.CustomerID = i.CustomerID
							AND il.InvoiceID = i.InvoiceID
							AND MONTH(i.InvoiceDate) in (1,2,3)
							AND YEAR(i.InvoiceDate) = 2013					
				),0
				) as Q1,
				ISNULL((
					SELECT	SUM(il.Quantity * il.UnitPrice)
					FROM	Sales.Invoices as i,
							Sales.InvoiceLines as il
					WHERE
							cu.CustomerID = i.CustomerID
							AND IL.InvoiceID = i.InvoiceID
							AND MONTH(i.InvoiceDate) in (4,5,6)
							AND YEAR(i.InvoiceDate) = 2013				
				),0
				) as Q2,
				ISNULL((
					SELECT	SUM(il.Quantity * il.UnitPrice)
					FROM	Sales.Invoices as i,
							Sales.InvoiceLines as il
					WHERE
							CU.CustomerID = i.CustomerID
							AND il.InvoiceID = i.InvoiceID
							AND MONTH(i.InvoiceDate) in (7,8,9)
							AND YEAR(i.InvoiceDate) = 2013					
				),0
				) as Q3,
				ISNULL((
					SELECT	SUM(il.Quantity * il.UnitPrice)
					FROM	Sales.Invoices as i,
							Sales.InvoiceLines as il
					WHERE
							cu.CustomerID = i.CustomerID
							AND il.InvoiceID = il.InvoiceID
							AND MONTH(i.InvoiceDate) in (10,11,12)
							AND YEAR(i.InvoiceDate) = 2013				
				),0
				) as Q4
			FROM 
				Sales.Customers as cu
			ORDER BY 
				cu.CustomerName;

	ELSE IF @Choice=3

		SELECT
			CU.CustomerName,
			ISNULL((
				SELECT	SUM(il.Quantity * il.UnitPrice)
				FROM	Sales.Invoices as i,
						Sales.InvoiceLines as il
				WHERE
						cu.CustomerID = i.CustomerID
						AND il.InvoiceID = i.InvoiceID
						AND YEAR(i.InvoiceDate) = 2013
			),0
			) as Total2013,
			ISNULL((
				SELECT	SUM(il.Quantity * il.UnitPrice)
				FROM	Sales.Invoices as i,
						Sales.InvoiceLines as il
				WHERE
						CU.CustomerID = i.CustomerID
						AND IL.InvoiceID = i.InvoiceID
						AND YEAR(i.InvoiceDate) = 2014
			),0
			) as Total2014,
			ISNULL((
				SELECT	SUM(il.Quantity * il.UnitPrice)
				FROM	Sales.Invoices as i,
						Sales.InvoiceLines as il
				WHERE
						CU.CustomerID = i.CustomerID
						AND IL.InvoiceID = i.InvoiceID
						AND YEAR(i.InvoiceDate) = 2015
			),0
			) as Total2015,
			ISNULL((
				SELECT	SUM(il.Quantity * il.UnitPrice)
				FROM	Sales.Invoices as i,
						Sales.InvoiceLines as il
				WHERE
						CU.CustomerID = i.CustomerID
						AND il.InvoiceID = i.InvoiceID
						AND YEAR(i.InvoiceDate) = 2016
			),0
			) as Total2016
		FROM 
			Sales.Customers as cu
		ORDER BY 
			cu.CustomerName;

	ELSE 
		
		SELECT
			cu.CustomerName,
				ISNULL((
					SELECT	
						SUM(il.Quantity * il.UnitPrice)
					FROM 
						Sales.Invoices as i,
						Sales.InvoiceLines as il
					WHERE
						cu.CustomerID = i.CustomerID
						and il.InvoiceID = i.InvoiceID
						and MONTH(i.InvoiceDate) = 1
						and YEAR(i.InvoiceDate) = 2013
				) ,0) as Jan,
				ISNULL((
					SELECT	
						SUM(il.Quantity * il.UnitPrice)
					FROM 
						Sales.Invoices as i,
						Sales.InvoiceLines as il
					WHERE
						cu.CustomerID = i.CustomerID
						and il.InvoiceID = i.InvoiceID
						and MONTH(i.InvoiceDate) = 2
						and YEAR(i.InvoiceDate) = 2013
				) ,0) as Feb,
				ISNULL((
					SELECT	
						SUM(il.Quantity * il.UnitPrice)
					FROM 
						Sales.Invoices as i,
						Sales.InvoiceLines as il
					WHERE
						cu.CustomerID = i.CustomerID
						and il.InvoiceID = i.InvoiceID
						and MONTH(i.InvoiceDate) = 3
						and YEAR(i.InvoiceDate) = 2013
				) ,0) as Mar,
				ISNULL((
					SELECT	
						SUM(il.Quantity * il.UnitPrice)
					FROM 
						Sales.Invoices as i,
						Sales.InvoiceLines as il
					WHERE
						cu.CustomerID = i.CustomerID
						and il.InvoiceID = i.InvoiceID
						and MONTH(i.InvoiceDate) = 4
						and YEAR(i.InvoiceDate) = 2013
				) ,0) as April,
				ISNULL((
					SELECT	
						SUM(il.Quantity * il.UnitPrice)
					FROM 
						Sales.Invoices as i,
						Sales.InvoiceLines as il
					WHERE
						cu.CustomerID = i.CustomerID
						and il.InvoiceID = i.InvoiceID
						and MONTH(i.InvoiceDate) = 5
						and YEAR(i.InvoiceDate) = 2013
				) ,0) as May,
				ISNULL((
					SELECT	
						SUM(il.Quantity * il.UnitPrice)
					FROM 
						Sales.Invoices as i,
						Sales.InvoiceLines as il
					WHERE
						cu.CustomerID = i.CustomerID
						and il.InvoiceID = i.InvoiceID
						and MONTH(i.InvoiceDate) = 6
						and YEAR(i.InvoiceDate) = 2013
				) ,0) as Jun,
				ISNULL((
					SELECT	
						SUM(il.Quantity * il.UnitPrice)
					FROM 
						Sales.Invoices as i,
						Sales.InvoiceLines as il
					WHERE
						cu.CustomerID = i.CustomerID
						and il.InvoiceID = i.InvoiceID
						and MONTH(i.InvoiceDate) = 7
						and YEAR(i.InvoiceDate) = 2013
				) ,0) as Jul,
				ISNULL((
					SELECT	
						SUM(il.Quantity * il.UnitPrice)
					FROM 
						Sales.Invoices as i,
						Sales.InvoiceLines as il
					WHERE
						cu.CustomerID = i.CustomerID
						and il.InvoiceID = i.InvoiceID
						and MONTH(i.InvoiceDate) = 8
						and YEAR(i.InvoiceDate) = 2013
				) ,0) as Aug,
				ISNULL((
					SELECT	
						SUM(il.Quantity * il.UnitPrice)
					FROM 
						Sales.Invoices as i,
						Sales.InvoiceLines as il
					WHERE
						cu.CustomerID = i.CustomerID
						and il.InvoiceID = i.InvoiceID
						and MONTH(i.InvoiceDate) = 9
						and YEAR(i.InvoiceDate) = 2013
				) ,0) as Sep,
				ISNULL((
					SELECT	
						SUM(il.Quantity * il.UnitPrice)
					FROM 
						Sales.Invoices as i,
						Sales.InvoiceLines as il
					WHERE
						cu.CustomerID = i.CustomerID
						and il.InvoiceID = i.InvoiceID
						and MONTH(i.InvoiceDate) = 10
						and YEAR(i.InvoiceDate) = 2013
				) ,0) as Oct,
				ISNULL((
					SELECT	
						SUM(il.Quantity * il.UnitPrice)
					FROM 
						Sales.Invoices as i,
						Sales.InvoiceLines as il
					WHERE
						cu.CustomerID = i.CustomerID
						and il.InvoiceID = i.InvoiceID
						and MONTH(i.InvoiceDate) = 11
						and YEAR(i.InvoiceDate) = 2013
				) ,0) as Nov,
				ISNULL((
					SELECT	
						SUM(il.Quantity * il.UnitPrice)
					FROM 
						Sales.Invoices as i,
						Sales.InvoiceLines as il
					WHERE
						cu.CustomerID = i.CustomerID
						and il.InvoiceID = i.InvoiceID
						and MONTH(i.InvoiceDate) = 12
						and YEAR(i.InvoiceDate) = 2013
				) ,0) as Dec
			FROM 
				Sales.Customers as cu
			ORDER BY
				cu.CustomerName;
			

END
GO

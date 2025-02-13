

SELECT [ProductKey]
      ,[CustomerKey]
      ,[SalesOrderNumber]
      ,[TotalProductCost]
      ,[SalesAmount]
      ,[TaxAmt]
      ,[Freight]
      ,CONVERT(Date,[OrderDate]) AS [Order Date]
      ,CONVERT(Date,[DueDate]) AS [Due Date]
      ,CONVERT(Date,[ShipDate]) AS [Ship Date]

  FROM [AdventureWorksDW2022].[dbo].[FactInternetSales]
  WHERE 
		YEAR([OrderDate]) >= 2022
		--Ensures that we bring data from 2022 onwards
  ORDER BY
		[OrderDate] ASC





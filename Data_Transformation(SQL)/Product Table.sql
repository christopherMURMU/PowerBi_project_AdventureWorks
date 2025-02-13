
SELECT p.[ProductKey]
      ,p.[ProductSubcategoryKey]
	  ,p.[EnglishProductName] AS ProductName
	  ,p.[ModelName]
	  ,ps.[EnglishProductSubcategoryName] AS [ProductSubCategory] -- Joined in from Product_Sub_Category Table
      ,pc.[EnglishProductCategoryName] AS [ProductCategory]       -- Joined in from Product_Category Table
      ,p.[StandardCost] AS ProductCost 
	  ,p.[ListPrice] AS SalePrice
      ,p.[Color]
      ,p.[SizeRange]
      
 FROM [AdventureWorksDW2022].[dbo].[DimProduct] AS p
	LEFT JOIN [AdventureWorksDW2022].[dbo].DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
	LEFT JOIN [AdventureWorksDW2022].[dbo].DimProductCategory AS pc ON pc.ProductCategoryKey = ps.ProductCategoryKey
ORDER BY
	p.ProductKey ASC 




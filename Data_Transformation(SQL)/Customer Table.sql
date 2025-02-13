

SELECT c.[CustomerKey]
      ,c.[GeographyKey]
	  ,c.[FirstName] + ' ' + [LastName] AS [Full Name]
	  --Combined First Name and Last Name columns
      ,c.[MaritalStatus]
      ,CASE c.[Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
      ,c.[YearlyIncome]
      ,c.[EnglishOccupation] AS Occupation
      ,c.[DateFirstPurchase]
	  ,g.[City]
	  ,g.[StateProvinceName] AS State
	  ,g.[EnglishCountryRegionName] AS Country
	  --Joined in City, State and Country columns from Geography Table

  FROM [AdventureWorksDW2022].[dbo].[DimCustomer] AS c
  LEFT JOIN
		[AdventureWorksDW2022].[dbo].[DimGeography] as g ON g.[GeographyKey]= c.[GeographyKey]






SELECT [DateKey]
      ,[FullDateAlternateKey] AS Date
      ,[EnglishDayNameOfWeek] AS Day
      ,LEFT([EnglishMonthName],3) AS Month
      ,[MonthNumberOfYear] AS [Month Num]
      ,[CalendarQuarter] AS Quarter
      ,[CalendarYear] AS Year

  FROM [AdventureWorksDW2022].[dbo].[DimDate]
  WHERE [CalendarYear] >= 2022




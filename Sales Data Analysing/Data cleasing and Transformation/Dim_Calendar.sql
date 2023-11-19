--clean dimDate Table
SELECT [DateKey]
      ,[FullDateAlternateKey]  as Date
      ,[DayNumberOfWeek] as Day
      ,[EnglishDayNameOfWeek]as week
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
      --,[DayNumberOfYear]
      ,[WeekNumberOfYear] as Week_nr
      ,left([EnglishMonthName],3)as Month
      --,[SpanishMonthName]
      --,[FrenchMonthName]
      ,[MonthNumberOfYear]as Momnth_nr
      ,[CalendarQuarter]as Quarter
      ,[CalendarYear]as year
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  where CalendarYear >=2019

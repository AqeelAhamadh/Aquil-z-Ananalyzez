-- data cleaning 
SELECT 
[CustomerKey] 
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,[FirstName]
      --,[MiddleName]
      ,[LastName],
	  [FirstName]+''+[LastName] as FullName 
      --,[NameStyle]
     -- ,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      ,Case [Gender] when 'M' then 'Male' when 'F' then 'Female' end AS Gender 
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
     -- ,[FrenchEducation]
     -- ,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,[DateFirstPurchase],
      --,[CommuteDistance]
	  dbo.DimGeography.City as [City]
	  
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer]
  left JOIN dbo.DimGeography on dbo.DimCustomer.GeographyKey = dbo.DimGeography.GeographyKey

  Order by
  CustomerKey ASC

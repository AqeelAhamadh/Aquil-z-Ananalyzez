SELECT 
		[ProductKey]
      --,[ProductAlternateKey]
      --,[ProductSubcategoryKey]
    --  ,[WeightUnitMeasureCode]
    ,[SizeUnitMeasureCode] as ProductCode
      ,[EnglishProductName] as ProductName
	  ,dbo.DimProductCategory.EnglishProductCategoryName as Catagory
	 ,dbo.DimProductSubcategory.EnglishProductSubcategoryName as Subcatagory
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,[Color] as ProductColor
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,[Size] as ProductSize
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,[ProductLine]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,[ModelName]
      --,[LargePhoto]
      ,[EnglishDescription] as Description
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
	 
      ,ISNULL( [Status],'Outdated') as ProductStatus
	  FROM [AdventureWorksDW2019].[dbo].[DimProduct]
	  left join dbo.DimProductSubcategory on dbo.DimProduct.ProductSubcategoryKey =dbo.DimProductSubcategory.ProductSubcategoryKey
	  left join dbo.DimProductCategory on dbo.DimProductCategory.ProductCategoryKey =dbo.DimProductSubcategory.ProductCategoryKey

	  order by ProductKey asc

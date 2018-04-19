

INSERT [dbo].[Product] (  [Name], [ProductNumber], [MakeFlag], [FinishedGoodsFlag], [Color], [SafetyStockLevel], [ReorderPoint], [StandardCost], [ListPrice], [Size],
 [SizeUnitMeasureCode], [WeightUnitMeasureCode], [Weight], [DaysToManufacture], [ProductLine], [Class], [Style], [ProductSubcategoryID], [ProductModelID], [SellStartDate], [SellEndDate], 
 [DiscontinuedDate], [rowguid], [ModifiedDate]) 
 VALUES (  N'testproduct', N'AR-5381', 0, 0, NULL, 1000, 750, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2002-06-01 00:00:00.000' AS DateTime), NULL, NULL, N'694215b7-08f7-4c0d-acb1-d734ba44c0c8', CAST(N'2008-03-11 10:01:36.827' AS DateTime))
go

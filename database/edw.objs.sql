 
CREATE TABLE [dbo].[changelog](
	[change_number] [int] NOT NULL,
	[delta_set] [varchar](10) NOT NULL,
	[start_dt] [datetime] NOT NULL,
	[complete_dt] [datetime] NULL,
	[applied_by] [varchar](100) NOT NULL,
	[description] [varchar](500) NOT NULL,
 CONSTRAINT [Pkchangelog] PRIMARY KEY CLUSTERED 
(
	[change_number] ASC,
	[delta_set] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

INSERT [dbo].[changelog] ([change_number], [delta_set], [start_dt], [complete_dt], [applied_by], [description]) VALUES (1, N'Main', CAST(N'2014-06-26 11:08:46.467' AS DateTime), CAST(N'2014-06-26 11:15:16.883' AS DateTime), N'dbo', N'01 INIT.sql')


CREATE TABLE [dbo].[DimProduct](
	[ProductKey] [int] IDENTITY(1,1) NOT NULL,
	[ProductAlternateKey] [nvarchar](25) NULL,
	[ProductSubcategoryKey] [int] NULL,
	[WeightUnitMeasureCode] [nchar](3) NULL,
	[SizeUnitMeasureCode] [nchar](3) NULL,
	[EnglishProductName] [nvarchar](50)   NULL,
	[SpanishProductName] [nvarchar](50)   NULL,
	[FrenchProductName] [nvarchar](50)   NULL,
	[StandardCost] [money] NULL,
	[FinishedGoodsFlag] [bit] NULL,
	[Color] [nvarchar](15)  NULL,
	[SafetyStockLevel] [smallint] NULL,
	[ReorderPoint] [smallint] NULL,
	[ListPrice] [money] NULL,
	[Size] [nvarchar](50) NULL,
	[SizeRange] [nvarchar](50) NULL,
	[Weight] [float] NULL,
	[DaysToManufacture] [int] NULL,
	[ProductLine] [nchar](2) NULL,
	[DealerPrice] [money] NULL,
	[Class] [nchar](2) NULL,
	[Style] [nchar](2) NULL,
	[ModelName] [nvarchar](50) NULL,
	[LargePhoto] [varbinary](max) NULL,
	[EnglishDescription] [nvarchar](400) NULL,
	[FrenchDescription] [nvarchar](400) NULL,
	[ChineseDescription] [nvarchar](400) NULL,
	[ArabicDescription] [nvarchar](400) NULL,
	[HebrewDescription] [nvarchar](400) NULL,
	[ThaiDescription] [nvarchar](400) NULL,
	[GermanDescription] [nvarchar](400) NULL,
	[JapaneseDescription] [nvarchar](400) NULL,
	[TurkishDescription] [nvarchar](400) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Status] [nvarchar](7) NULL,
 CONSTRAINT [PK_DimProduct_ProductKey] PRIMARY KEY CLUSTERED 
(
	[ProductKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO 

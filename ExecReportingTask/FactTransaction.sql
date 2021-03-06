CREATE TABLE [rep].[FactTransaction](
	[AccountID] [int] NULL,
	[AccountGroupID] [int] NULL,
	[RegionID] [int] NULL,
	[Source_ID] [float] NULL,
	[code] [nvarchar](255) NULL,
	[MovementType] [nvarchar](5) NULL,
	[FlowType] [nvarchar](7) NULL,
	[transaction_type_desc] [nvarchar](255) NULL,
	[volume] [float] NULL,
	[value] [float] NULL,
	[value_GBP] [float] NULL,
	[InFlow_GBP] [float] NULL,
	[OutFlow_GBP] [float] NULL,
	[currency_code] [nvarchar](255) NULL,
	[exchange_rate] [float] NULL,
	[trade_date] [datetime] NULL,
	[settlement_date] [datetime] NULL,
	[security_description] [nvarchar](255) NULL
) ON [PRIMARY]
GO

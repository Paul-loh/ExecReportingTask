CREATE TABLE [rep].[DimAccountGroup]
(
	[AccountGroupID] [int] IDENTITY(1,1) NOT NULL,
	[account_group_code] [nvarchar](255) NULL,
	[primary_manager_entity_id] [float] NULL,
	[service_type] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
CREATE PROCEDURE [etl].[LoadTransactions]
	
AS
	
	INSERT INTO rep.FactTransaction
	(
	   [AccountID]
	  ,[AccountGroupID]
      ,[RegionID]
      ,[Source_ID]
      ,[code]
      ,[MovementType]
	  ,[FlowType]
      ,[transaction_type_desc]
      ,[volume]
      ,[value]
	  ,[value_GBP]
	  ,[InFlow_GBP]
	  ,[OutFlow_GBP]
      ,[currency_code]
      ,[exchange_rate]
      ,[trade_date]
      ,[settlement_date]
      ,[security_description]
	)
	SELECT 
		[accountid]
		,[AccountGroupID]
		,[RegionID]
		,[Id]
		,[code]
		,CASE	WHEN [code] LIKE 'UPER-CASH%'		  
				THEN N'Cash' ELSE N'Stock' END AS [MovementType]
		,CASE	WHEN [volume] < 0 
				THEN N'Outflow' ELSE N'Inflow' END AS [FlowType]
		,[transaction_type_desc]		
		,[volume]
		,[value]
		,[value] / [exchange_rate] AS [value_GBP]

		,CASE	WHEN [volume] > 0 
				THEN [value] / [exchange_rate]
				ELSE 0 END AS [InFlow_GBP]

		,CASE	WHEN [volume] < 0 				
				THEN [value] / [exchange_rate] 
				ELSE 0 END AS [OutFlow_GBP]

		,[currency_code]
		,[exchange_rate]
		,[trade_date]
		,[settlement_date]
		,[security_description]		
	FROM		stg.[Transaction]

RETURN 0

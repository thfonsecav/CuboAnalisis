
use CuboNortWnd

if (OBJECT_ID ('dbo.DimCustumer', 'U') > 0)
	drop table DimCustumer;

SELECT    [CompanyName]
      ,[ContactName]
      ,[ContactTitle]
      ,[Address]
      ,[City]
      ,isnull( Region ,'N/A') as Region
      ,[PostalCode]
      ,[Country]
      ,[Phone]
      ,[Fax]
into DimCustumer
FROM   NorthWnd.dbo.Customers
--where 1 = 0
;

begin tran
--update DimCustumer set EstratoFlete =
--( select e.Descripcion from NorthWndEstratos e 
	--	where Freight >= e.LimiteInferior and Freight < e.LimiteSuperior
		--and e.TipoEstrato = 'OrdenFlete'
	--	);

commit;
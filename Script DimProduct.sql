use CuboNortWnd

if (OBJECT_ID ('dbo.DimProduct', 'U') > 0)
	drop table DimProduct;

SELECT      [ProductName]
      ,[SupplierID]
      ,[CategoryID]
      ,[QuantityPerUnit]
      ,[UnitPrice]
      ,[UnitsInStock]
      ,[UnitsOnOrder]
      ,[ReorderLevel]
      ,[Discontinued]
into DimProduct
FROM   NorthWnd.dbo.Products
--where 1 = 0
;

begin tran
--update DimCustumer set EstratoFlete =
--( select e.Descripcion from NorthWndEstratos e 
	--	where Freight >= e.LimiteInferior and Freight < e.LimiteSuperior
		--and e.TipoEstrato = 'OrdenFlete'
	--	);

commit;
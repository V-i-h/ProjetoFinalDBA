use Romullus;

drop function if exists ValorTotalPorTipo;

Create function ValorTotalPorTipo (@TipoImovelID int)
returns decimal (10,2)

as
begin 

declare @ValorTotal decimal;
select @ValorTotal=Sum(Valor_Imovel)
from Imovel
where fk_TipoImovel_ID = @TipoImovelID;

return @ValorTotal;
end;

select dbo.ValorTotalPorTipo(1) as ValorTotalImoveis;


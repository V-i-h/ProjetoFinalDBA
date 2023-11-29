use Romullus;

go
 create view vw_DetalhesImovelSP as
 Select i.ID, 
        i.Valor_imovel,
		e.Logradouro,
		e.Numero,
		b.Nome_bairro,
		c.Nome_cidade,
		u.Nome_UF,
		u.Sigla_UF
 from imovel i 
 join Endereco e on i.fk_Endereco_ID = e.ID
 join Bairro b on e.fk_Bairro_ID= b.ID
 join Cidade c on b.fk_Cidade_ID=c.ID
 join UF u on c.fk_UF_ID=u.ID
 where Nome_cidade ='São Paulo';

select * from vw_DetalhesImovelSP;




go
CREATE VIEW vw_quantidadeimoveisanuncio 
as
select count(Nome_tipo_Anuncio) as	Quantidade_de_imóveis_por_tipo,TipoAnuncio.Nome_Tipo_Anuncio
from TipoAnuncio
join Imovel
on TipoAnuncio.ID= Imovel.fk_TipoAnuncio_ID
group by TipoAnuncio.Nome_Tipo_Anuncio;

select * from vw_quantidadeimoveisanuncio where Nome_Tipo_Anuncio='Venda';




 go
 create view vw_quantidadeimoveiscidade as
 Select  count(c.Nome_cidade)	AS Quantidadedeimoveisporcidade,c.Nome_cidade
 from imovel i 
 join Endereco e on i.fk_Endereco_ID = e.ID
 join Bairro b on e.fk_Bairro_ID= b.ID
 join Cidade c on b.fk_Cidade_ID=c.ID
 join UF u on c.fk_UF_ID=u.ID
 group by c.Nome_cidade ;

 select * from vw_quantidadeimoveiscidade where  Nome_Cidade='Fortaleza' ;
 




 go 
 create view vw_valoresporimoveis as 
 select TipoImovel.NomeTipoImovel, sum(Valor_imovel) as Valorportipo
 from imovel
 join TipoImovel
 on imovel.fk_TipoImovel_ID = TipoImovel.ID
group by TipoImovel.NomeTipoImovel;


select * from vw_valoresporimoveis where NomeTipoImovel='Casa Residencial';



go 
create view vw_ValorporArea as 
select ID,Format(Valor_imovel,'C','PT-BR') as ValorImovel, Area_util,FORMAT(cast(round(
case
when nullif(Area_util,0) is null then null
else  Valor_imovel/NULLIF(Area_util,0)
end ,2) as decimal(10,2)),'C','PT-BR') as ValorPormetroquadrado
from Imovel;

select * from vw_ValorporArea;
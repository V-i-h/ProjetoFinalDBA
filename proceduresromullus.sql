use Romullus;

IF OBJECT_ID('AlterarSenha','P') is not null
drop procedure AlterarSenha;
go

create procedure AlterarSenha
@UsuarioID Int ,
@NovaSenha varchar(32)
as 

begin
update Usuario set Senha=@NovaSenha
where Usuario.ID = @UsuarioID
end ;

select*from Usuario;
exec AlterarSenha @usuarioID= 1, @NovaSenha='333xzx';




if OBJECT_ID('Seleção','P') is not null
drop procedure Seleção;
go

create procedure Seleção
@id int
as 
begin

Select Logradouro,Numero,Complemento ,Nome_bairro,Nome_Cidade,Nome_UF,Sigla_UF
from Cidade
INNER join UF on Cidade.fk_UF_ID= UF.ID
INNER JOIN Bairro on Cidade.ID=BairrO.fk_Cidade_ID
INNER Join Endereco on Endereco.fk_Bairro_ID =Cidade.fk_UF_ID
where Cidade.ID= @id;
end;
GO;
Select* from Cidade;
EXEC Seleção @id=3;


select * from Imovel;



go
create procedure ImagensporImovel
@imovelID int 
as

begin

select* 
from Imagem
where fk_Imovel_ID= @imovelID;

end;

exec ImagensporImovel @imovelID=3;



go 
create procedure inserirlogin
@ID int,
@Email varchar(100),
@Senha nchar(32),
@Campo int

as
begin
insert into  
Login (ID ,Email,Senha,Campo)
values (@ID,@Email,@Senha,@Campo);
END;
SELECT* FROM LOGIN;
Exec inserirlogin @ID=11, @Email='carlos321@gmail.com',@Senha='332659m',@Campo=	1;



go 
create procedure Deletarlogin
@ID int
as
begin 
delete dbo.Login 
where @ID=ID;
END;

EXEC Deletarlogin @ID= 9;



go
create procedure ImoveisTipoAnuncio
@IdTipo int
as
begin 
Select * 
from Imovel
join TipoAnuncio
on Imovel.fk_TipoAnuncio_ID =TipoAnuncio.ID
where fk_TipoAnuncio_ID=@IdTipo;
end;


exec ImoveisTipoAnuncio @IdTipo=2;


go
Create procedure Aumento
@FatorAumento float
as
begin
update imovel 
set Valor_imovel= Valor_imovel * @FatorAumento
end;

exec Aumento @FatorAumento=1.5;

Select * from imovel;




go
create procedure InserirUsuario
@ID int,
@Nome varchar(120),
@Senha nchar(32),
@Email varchar(100),
 @Fk int 
 as
 begin
 insert into Usuario(ID,Nome,Senha,DataHoraCriacao,DataHoraUltimoAcesso,Email,fk_TipoUsuario_ID)
 values(@ID,@Nome,@Senha,getdate(),GETDATE(),@Email,@Fk);
 end;

 exec InserirUsuario @ID=11,@Nome='Ronaldo Sousa',@Senha='12365kli',@Email='RonaldoSousa@gmail.com'
 ,@fk=2;




  go 
 create procedure Deletarimoveis
@nomecidade varchar(60)
 as                                                                                 
 begin 
 delete Imovel 
 from Imovel
join endereco on imovel.fk_Endereco_ID = Endereco.ID
join bairro on endereco.fk_Bairro_ID= bairro.ID
join cidade on bairro.fk_Cidade_ID= cidade.ID
join UF on cidade.fk_UF_ID= UF.ID
 where @nomecidade=Nome_cidade;
 end;
  

 exec Deletarimoveis @nomecidade = 'Salvador';


 IF OBJECT_ID('AlterarSenha','P') is not null
drop procedure AlterarSenha;
go

create procedure AlterarSenha
@UsuarioID Int ,
@NovaSenha varchar(32)
as 

begin
update Usuario set Senha=@NovaSenha
where Usuario.ID = @UsuarioID
end ;

select*from Usuario;
exec AlterarSenha @usuarioID= 1, @NovaSenha='333xzx';




if OBJECT_ID('Seleção','P') is not null
drop procedure Seleção;
go

create procedure Seleção
@id int
as 
begin

Select Logradouro,Numero,Complemento ,Nome_bairro,Nome_Cidade,Nome_UF,Sigla_UF
from Cidade
INNER join UF on Cidade.fk_UF_ID= UF.ID
INNER JOIN Bairro on Cidade.ID=BairrO.fk_Cidade_ID
INNER Join Endereco on Endereco.fk_Bairro_ID =Cidade.fk_UF_ID
where Cidade.ID= @id;
end;
GO;
Select* from Cidade;
EXEC Seleção @id=3;


select * from Imovel;



go
create procedure ImagensporImovel
@imovelID int 
as

begin

select* 
from Imagem
where fk_Imovel_ID= @imovelID;

end;

exec ImagensporImovel @imovelID=3;



go 
create procedure inserirlogin
@ID int,
@Email varchar(100),
@Senha nchar(32),
@Campo int

as
begin
insert into  
Login (ID ,Email,Senha,Campo)
values (@ID,@Email,@Senha,@Campo);
END;
SELECT* FROM LOGIN;
Exec inserirlogin @ID=11, @Email='carlos321@gmail.com',@Senha='332659m',@Campo=	1;



go 
create procedure Deletarlogin
@ID int
as
begin 
delete dbo.Login 
where @ID=ID;
END;

EXEC Deletarlogin @ID= 9;



go
create procedure ImoveisTipoAnuncio
@IdTipo int
as
begin 
Select * 
from Imovel
join TipoAnuncio
on Imovel.fk_TipoAnuncio_ID =TipoAnuncio.ID
where fk_TipoAnuncio_ID=@IdTipo;
end;


exec ImoveisTipoAnuncio @IdTipo=2;


go
Create procedure Aumento
@FatorAumento float
as
begin
update imovel 
set Valor_imovel= Valor_imovel * @FatorAumento
end;

exec Aumento @FatorAumento=1.5;

Select * from imovel;




go
create procedure InserirUsuario
@ID int,
@Nome varchar(120),
@Senha nchar(32),
@Email varchar(100),
 @Fk int 
 as
 begin
 insert into Usuario(ID,Nome,Senha,DataHoraCriacao,DataHoraUltimoAcesso,Email,fk_TipoUsuario_ID)
 values(@ID,@Nome,@Senha,getdate(),GETDATE(),@Email,@Fk);
 end;

 exec InserirUsuario @ID=11,@Nome='Ronaldo Sousa',@Senha='12365kli',@Email='RonaldoSousa@gmail.com'
 ,@fk=2;




  go 
 create procedure Deletarimoveis
@nomecidade varchar(60)
 as                                                                                 
 begin 
 delete Imovel 
 from Imovel
join endereco on imovel.fk_Endereco_ID = Endereco.ID
join bairro on endereco.fk_Bairro_ID= bairro.ID
join cidade on bairro.fk_Cidade_ID= cidade.ID
join UF on cidade.fk_UF_ID= UF.ID
 where @nomecidade=Nome_cidade;
 end;
  

 exec Deletarimoveis @nomecidade = 'Salvador';




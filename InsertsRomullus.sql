use Romullus;
;insert into UF(Nome_UF, Sigla_UF) values 
('São Paulo', 'SP'),
('Rio de Janeiro', 'RJ'),
('Minas Gerais' , 'MG'),
('Bahia' , 'BA'),
('Rio Grande do Sul' , 'RS'),
('Amazonas' , 'AM'),
('Pernambuco', 'PE'),
('Ceará', 'CE'),
('Paraná' , 'PR'),
('Goiás' , 'GO');


insert into Cidade(Nome_cidade,fk_UF_ID) values 
( 'São Paulo',1), 
 ('Rio de Janeiro',2),
 ('Belo Horizonte',3) ,
( 'Salvador',4) ,
 ('Porto Alegre',5),
 ('Manaus',6),
 ( 'Recife',7) ,
 ('Fortaleza',8),
 ('Curitiba',9) ,
 ('Goiânia',10);


 insert into Bairro (Nome_bairro,fk_Cidade_ID) Values
 ('Vila Madalena',1),
('Copacabana',2),
( 'Savassi',3),
('Barra',4),
( 'Moinhos de Vento',5),
( 'Adrianópolis',6),
( 'Boa Viagem',7),
('Meireles',8),
( 'Batel',9),
( 'Setor Marista',10);


insert into Endereco (ID, Logradouro, Numero, Complemento,fk_Bairro_ID) values
('Avenida Pedroso de Morais',5,'Casa',1),
('Avenida Atlântica',10,'Apartamento',2),
('Rua Pernambuco',15,'Casa',3),
('Avenida Oceânica',20,'Apartamento',4),
('Avenida Goethe',2,'Apartamento',5),
('Avenida Mário Ypiranga',3,'Casa',6),
('Avenida Boa Viagem',4,'Casa',7),
('Avenida Beira Mar',6,'Apartamento',8),
('Rua Bispo Dom José',8,'Casa',9),
('Avenida Ricardo Paranhos',12,'Apartamento',10);


INSERT INTO TipoImovel ( NomeTipoImovel) VALUES
( 'Casa Residencial'),
( 'Apartamento'),
( 'Cobertura'),
('Casa de Campo'),
('Kitnet ou Studio'),
 ('Chalé'),
('Casa Térrea'),
('Sobrado'),
('Loft'),
('Edifício Comercial');


insert into TipoAnuncio(Nome_Tipo_Anuncio) values
('Aluguel'),
('Venda');



INSERT INTO Imovel (Qtd_vaga, Qtd_quarto, Qtd_suite, Qtd_banheiro, Area_util, Valor_imovel, Observacoes,fk_TipoImovel_ID,fk_Endereco_ID,fk_TipoAnuncio_ID)
VALUES
(1, 3, 1, 2, 150, 50000, 'Casa residencial com quintal espaçoso e área de lazer.',1,1,2),
(1,2, 1, 1, 80, 30000, 'Apartamento em condomínio fechado com segurança 24 horas.',2,2,1),
(2,4, 2, 3, 220, 80000, 'Casa com vista panorâmica da cidade e ampla área de lazer privativa.',1,3,2),
(2, 3, 1, 2, 120, 40000, 'Casa de campo com jardim bem cuidado e área de churrasco.',1,4,1),
(1, 0, 1,2,40, 1500, 'Apartamento perfeito para solteiros.',2,5,2),
(2, 2, 1, 1, 90, 35000, 'Apartamento aconchegante com lareira e vista para a montanha.',2,6,1),
(2, 3, 2, 2, 130, 450000, 'Casa térrea com amplo jardim e área de lazer.',1,7,2),
(2, 4, 2, 3, 180, 650000, 'Casa moderno com acabamentos de alta qualidade.',1,8,1),
(1, 1, 1, 1, 60, 250000, 'Apartamento espaçoso em prédio histórico, próximo a restaurantes e galerias de arte.',2,9,2),
(1, 0, 0, 1, 50, 200000, ' Apartamento com sala para escritório, localização estratégica no centro da cidade.',2,10,1);



INSERT INTO Imagem ( Nome_Imagem,url, fk_Imovel_ID) values 
('Imagem1','C:\Users\ead\Desktop\WSBRASIL\Projeto Teste PHP - PE\ASSETS',1),
('Imagem1.1','C:\Users\ead\Desktop\WSBRASIL\Projeto Teste PHP - PE\ASSETS',1),
('Imagem2','C:\Users\ead\Desktop\WSBRASIL\Projeto Teste PHP - PE\ASSETS',2),
('Imagem2.1','C:\Users\ead\Desktop\WSBRASIL\Projeto Teste PHP - PE\ASSETS',2),
('Imagem3','C:\Users\ead\Desktop\WSBRASIL\Projeto Teste PHP - PE\ASSETS',3),
('Imagem3.1','C:\Users\ead\Desktop\WSBRASIL\Projeto Teste PHP - PE\ASSETS',3),
('Imagem4','C:\Users\ead\Desktop\WSBRASIL\Projeto Teste PHP - PE\ASSETS',4),
('Imagem4.1','C:\Users\ead\Desktop\WSBRASIL\Projeto Teste PHP - PE\ASSETS',4),
('Imagem5','C:\Users\ead\Desktop\WSBRASIL\Projeto Teste PHP - PE\ASSETS',5),
('Imagem5.1','C:\Users\ead\Desktop\WSBRASIL\Projeto Teste PHP - PE\ASSETS',5),
('Imagem6','C:\Users\ead\Desktop\WSBRASIL\Projeto Teste PHP - PE\ASSETS',6),
('Imagem6.1','C:\Users\ead\Desktop\WSBRASIL\Projeto Teste PHP - PE\ASSETS',6),
('Imagem7','C:\Users\ead\Desktop\WSBRASIL\Projeto Teste PHP - PE\ASSETS',7),
('Imagem7.1','C:\Users\ead\Desktop\WSBRASIL\Projeto Teste PHP - PE\ASSETS',7),
('Imagem8','C:\Users\ead\Desktop\WSBRASIL\Projeto Teste PHP - PE\ASSETS',8),
('Imagem8.1','C:\Users\ead\Desktop\WSBRASIL\Projeto Teste PHP - PE\ASSETS',8),
('Imagem9','C:\Users\ead\Desktop\WSBRASIL\Projeto Teste PHP - PE\ASSETS',9),
('Imagem9.1','C:\Users\ead\Desktop\WSBRASIL\Projeto Teste PHP - PE\ASSETS',9),
('Imagem10','C:\Users\ead\Desktop\WSBRASIL\Projeto Teste PHP - PE\ASSETS',10),
('Imagem10.1','C:\Users\ead\Desktop\WSBRASIL\Projeto Teste PHP - PE\ASSETS',10);



insert into TipoUsuario(ID,Tipo) values
('Corretor'),
('Cliente');



INSERT INTO Usuario (Nome, Senha,DataHoraCriacao,DataHoraUltimoAcesso, Email,fk_TipoUsuario_ID)
VALUES ('João Silva', 'senha123',GETDATE(),GETDATE(), 'joao.silva@email.com',1),
('Maria Oliveira', 'senha456',GETDATE(),GETDATE(), 'maria.oliveira@email.com',2),
('Carlos Santos', 'senha789',GETDATE(),GETDATE(), 'carlos.santos@email.com',1),
('Ana Pereira', 'senhaabc',GETDATE(),GETDATE(), 'ana.pereira@email.com',2),
('Pedro Rodrigues', 'senhaXYZ',GETDATE(),GETDATE(), 'pedro.rodrigues@email.com',1),
('Juliana Costa', 'senha321', GETDATE(),GETDATE(),'juliana.costa@email.com',2),
('Lucas Mendes', 'senha654',GETDATE(),GETDATE(), 'lucas.mendes@email.com',1),
('Fernanda Almeida', 'senha987',GETDATE(),GETDATE(), 'fernanda.almeida@email.com',2),
('Rafael Nunes', 'senhaaaa',GETDATE(),GETDATE(), 'rafael.nunes@email.com',1),
('Camila Lima', 'senhabbb',GETDATE(),GETDATE(), 'camila.lima@email.com',2);




insert into Login (Email,Senha,Campo) values
('joao.silva@email.com','senha123',1),
('maria.oliveira@email.com','senha456',2),
('carlos.santos@email.com','senha789',3),
('ana.pereira@email.com','senhaabc',4),
('pedro.rodrigues@email.com', 'senhaXYZ',5),
('juliana.costa@email.com', 'senha321',6),
( 'lucas.mendes@email.com','senha654',7),
('fernanda.almeida@email.com','senha987',8),
( 'rafael.nunes@email.com','senhaaaa',9),
( 'camila.lima@email.com', 'senhabbb',10);

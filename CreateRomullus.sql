CREATE DATABASE Romullus;
use  Romullus;

CREATE TABLE Usuario (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Nome VARCHAR(120) not null,
    Senha NCHAR(32) not null,
    DataHoraCrianao DATETIME not null,
    DataHoraUltimoAcesso DATETIME not null,
    fk_TipoUsuario_ID INT,
    Email VARCHAR(100) not null
);

CREATE TABLE TipoUsuario (
    ID INT PRIMARY KEY  IDENTITY(1,1),
    Tipo VARCHAR(60) not null
);

CREATE TABLE Cidade (
    ID INT PRIMARY KEY  IDENTITY(1,1),
    Nome_cidade VARCHAR(60) not null,
    fk_UF_ID INT
);

CREATE TABLE Bairro (
    ID INT PRIMARY KEY  IDENTITY(1,1),
    Nome_bairro VARCHAR(60) not null,
    fk_Cidade_ID INT
);

CREATE TABLE UF (
    ID INT PRIMARY KEY  IDENTITY(1,1),
    Nome_UF VARCHAR(60) not null,
    Sigla_UF NCHAR(2) not null
);

CREATE TABLE Endereco (
    ID INT PRIMARY KEY  IDENTITY(1,1),
    Logradouro VARCHAR(60) not null,
    Numero INT not null,
    Complemento VARCHAR(60) not null ,
    fk_Bairro_ID INT 
);

CREATE TABLE TipoAnuncio (
    ID INT PRIMARY KEY  IDENTITY(1,1),
    Nome_Tipo_Anuncio VARCHAR(60) not null
);

CREATE TABLE Imovel (
    Qtd_vaga INT not null,
    Qtd_quarto INT not null,
    Qtd_suite INT not null,
    Qtd_banheiro INT not null,
    ID INT PRIMARY KEY  IDENTITY(1,1),
    Area_util INT not null,
    Valor_imovel DECIMAL not null,
    Observacoes TEXT not null,
    fk_TipoImovel_ID INT , 
    fk_Endereco_ID INT,
    fk_TipoAnuncio_ID INT
);

CREATE TABLE TipoImovel (
    ID INT PRIMARY KEY  IDENTITY(1,1),
    NomeTipoImovel VARCHAR(30) not null
);

CREATE TABLE Imagem (
    ID INT PRIMARY KEY  IDENTITY(1,1),
    Nome_Imagem VARCHAR(100) not null ,
    url VARCHAR(100) not null,
    fk_Imovel_ID INT
);

CREATE TABLE Login (
    ID INT PRIMARY KEY  IDENTITY(1,1),
    Email VARCHAR(100) not null,
    Senha NCHAR(32) not null,
    Campo INT
);

CREATE TABLE TipoContato (
    ID INT PRIMARY KEY  IDENTITY(1,1),
    Nome VARCHAR(80) not null
);

CREATE TABLE ContatoSite (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Nome VARCHAR(80) not null,
    Email VARCHAR(80) not null,
    Mensagem TEXT not null,
    DataHora DATETIME not null,
    fk_TipoContato_ID INT
);



 
ALTER TABLE Usuario ADD CONSTRAINT FK_Usuario_2
    FOREIGN KEY (fk_TipoUsuario_ID)
    REFERENCES TipoUsuario (ID)
    ON DELETE CASCADE;
 
ALTER TABLE Cidade ADD CONSTRAINT FK_Cidade_2
    FOREIGN KEY (fk_UF_ID)
    REFERENCES UF (ID)
    ON DELETE CASCADE;
 
ALTER TABLE Bairro ADD CONSTRAINT FK_Bairro_2
    FOREIGN KEY (fk_Cidade_ID)
    REFERENCES Cidade (ID)
    ON DELETE CASCADE;
 
ALTER TABLE Endereco ADD CONSTRAINT FK_Endereco_2
    FOREIGN KEY (fk_Bairro_ID)
    REFERENCES Bairro (ID)
    ON DELETE CASCADE;
 
ALTER TABLE Imovel ADD CONSTRAINT FK_Imovel_2
    FOREIGN KEY (fk_TipoImovel_ID)
    REFERENCES TipoImovel (ID)
    ON DELETE CASCADE;
 
ALTER TABLE Imovel ADD CONSTRAINT FK_Imovel_3
    FOREIGN KEY (fk_Endereco_ID)
    REFERENCES Endereco (ID)
    ON DELETE Cascade ;
 
ALTER TABLE Imovel ADD CONSTRAINT FK_Imovel_4
    FOREIGN KEY (fk_TipoAnuncio_ID)
    REFERENCES TipoAnuncio (ID)
    ON DELETE CASCADE;
 
ALTER TABLE Imagem ADD CONSTRAINT FK_Imagem_2
    FOREIGN KEY (fk_Imovel_ID)
    REFERENCES Imovel (ID)
    ON DELETE Cascade;
 
ALTER TABLE Login ADD CONSTRAINT FK_Login_1
    FOREIGN KEY (Campo)
    REFERENCES Usuario (ID)
    ON DELETE Cascade;
 
ALTER TABLE ContatoSite ADD CONSTRAINT FK_ContatoSite_2
    FOREIGN KEY (fk_TipoContato_ID)
    REFERENCES TipoContato (ID)
    ON DELETE CASCADE;
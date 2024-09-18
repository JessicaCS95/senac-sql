CREATE DATABASE sistemadeacademia;

CREATE TABLE cadastrocliente(
    cpf CHAR(15) primary key NOT NULL, 
    nomecompleto VARCHAR(200) NOT NULL, 
    datadenascimento DATE NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL, 
    telefone INT(15) NOT NULL,
    cep INT(8) NOT NULL, 
    rua VARCHAR(50) NOT NULL,
    numero CHAR(8) NOT NULL,
    complemento VARCHAR(50),
    bairro CHAR(20) NOT NULL, 
    cidade VARCHAR(50) NOT NULL,
    estado CHAR(20) NOT NULL
);

--Inserindo dados/tupla na tabela
INSERT INTO cadastrocliente (cpf, nomecompleto, datadenascimento, email, telefone, cep, rua, numero, complemento, bairro, cidade, estado)
VALUES ("11444514X", "Jessica Campos de Souza","1995-04-04", "jessica.aulasfr@gmail.com", 11999999999, 01210001, "Rua Vitoria","395"," ", "Santa Ifigênia", "São Paulo", "SP")

--Inserindo mais de um dado ao mesmo tempo
INSERT INTO cadastrocliente (cpf, nomecompleto, datadenascimento, email, telefone, cep, rua, numero, complemento, bairro, cidade, estado)
VALUES ("12345678985", "Maria Souza", "1980-09-17", "maria@outlook.com", 11989888989, 05148896, "Rua A", "12A", " ", "Jabauqara", "São Paulo", "SP"), ("78945612332", "Joao Souza", "1978-09-17", "joao@outlook.com", 11989638989, 05148896, "Rua B", "13", " ", "Jabauqara", "São Paulo", "SP"), ("56445612751", "José Silva", "1982-09-17", "jose@outlook.com", 11989578989, 05148896, "Rua C", "15", " ", "Jabauqara", "São Paulo", "SP")

--Exibir todos os dados na tela
SELECT * FROM cadastrocliente;

--Exibir apenas um dados na tela
SELECT nomecompleto FROM cadastrocliente WHERE nomecompleto = "Jessica Campos de Souza";

--Exibir todos os dados de uma coluna
SELECT nomecompleto FROM cadastrocliente;

--Exibir duas colunas
SELECT nomecompleto, datadenascimento FROM cadastrocliente;

--Teste / Pesquisa de dado nao cadastrado
SELECT nomecompleto FROM cadastrocliente WHERE nomecompleto = "Michele Silva"

--Exibir na tela uma coluna com operação menor que <
SELECT telefone FROM cadastrocliente < 58950;

--Exibir na tela uma coluna com operação maior que >
SELECT cep FROM cadastrocliente WHERE cep > 5;

--Exibir na tela uma coluna com operação igual a =
SELECT cep FROM cadastrocliente WHERE cep = 01210001;

--Exibir na tela duas colunas com operação igual a =
SELECT cep, rua FROM cadastrocliente WHERE cep = 01210001;

--Selecionar dados de uma coluna onde contenha uma palavra
SELECT * FROM cadastrocliente WHERE nomecompleto LIKE '%Jessica%';

--Selecionar dados de uma coluna onde NÃO contenha uma palavra
SELECT * FROM cadastrocliente WHERE nomecompleto NOT LIKE '%Jessica%';

--Ordenando todos os dados da tabela em ordem ascendente
SELECT * FROM cadastrocliente ORDER BY nomecompleto asc;

--Ordenando todos os dados da tabela em ordem descendente/decrescente
SELECT * FROM cadastrocliente ORDER BY nomecompleto desc;

SELECT * FROM cadastrocliente ORDER BY nomecompleto desc;
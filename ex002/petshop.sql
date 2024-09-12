/*Dada a correção da atividade de PetShop, crie um arquivo em linguagem SQL de acordo com as solicitações abaixo não esqueça de testar no XAMPP, anexe as 5 telas capturadas, anexe o link do GitHub com as linhas de código SQL e essa atividade como comentário nas linhas de código.*/

 /*Crie um banco de dados utilizando a linguagem SQL*/
CREATE DATABASE SistemaPetShop;


/*Crie as 4 tabelas de cliente, veterinário, consulta e animal, contendo em cada uma das tabelas o seu atributo com seu respectivo datatype. (Capture a tela do XAMPP)*/
CREATE TABLE cliente(
    cpf CHAR(15) primary key NOT NULL, 
    nomecompletocliente VARCHAR(200) NOT NULL, 
    telefone INT(15) NOT NULL
);

CREATE TABLE animal(
    id_animal INT (10) primary key NOT NULL, 
    nomeanimal CHAR(30) NOT NULL, 
    anonascimento INT(4) NOT NULL
);

CREATE TABLE veterinario(
    crmv CHAR(10) primary key NOT NULL, 
    nomecompletoveterinario VARCHAR(200) NOT NULL, 
    datadeadmissao DATE NOT NULL,
    salario DECIMAL(10,2)
);

CREATE TABLE consulta(
    id_consulta INT (10) primary key NOT NULL, 
    dataconsulta DATE NOT NULL, 
    horarioconsulta TIME NOT NULL,
    motivo varchar(200)
);


/*Realize a alteração do atributo da tabela cliente de nomecliente para nomecompleto (Capture a tela do XAMPP)*/
ALTER TABLE cliente
CHANGE COLUMN nomecompletocliente nomecompleto VARCHAR(200) NOT NULL;



/*Realize a alteração do datatype motivo de (200) caracteres para (500) caracteres (Captura a tela do XAMPP)*/
ALTER TABLE consulta
MODIFY COLUMN motivo VARCHAR(500) NOT NULL;

/*delete o atributo nomeanimal da tabela animal, depois adicionei novamente o atributo com o nome: nomeanimalzinho*/
ALTER TABLE animal
DROP COLUMN nomeanimal; 

ALTER TABLE animal 
ADD nomeanimalzinho CHAR (30);

/*realize uma pesquisa na documentação de como insere dados em uma tabela existente, insira os dados "Ana Claudia Cunha" para nome da cliente, telefone 11999998888, e cpf 1144444411 na tabela do cliente. (Capture a tela do XAMPP)*/
INSERT INTO cliente (cpf, nomecompleto, telefone)
VALUES ('1144444411', 'Ana Claudia Cunha', '11999998888' )


/*Por fim, realize a exclusão dos dados da tabela cliente*/
DELETE FROM Cliente;


/*Realize a exclusão de cada uma das tabelas*/
DROP TABLE cliente;
DROP TABLE animal;
DROP TABLE veterinario;
DROP TABLE consulta;

/*Realize a exclusão do banco de dados (Capture a tela do XAMPP)*/

DROP DATABASE SistemaPetShop;



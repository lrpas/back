
CREATE TABLE dados_pessoais;
CREATE TABLE dados_pessoais (nome VARCHAR(10) NOT NULL, cpf CHAR(11) NOT NULL, idade INT );
insert into dados_pessoais(nome,cpf,idade) VALUES ('larissa','11812139403',21);
insert into dados_pessoais(nome,cpf,idade) VALUES ('larissa','11812139403',20);
insert into dados_pessoais(nome,cpf,idade) VALUES ('larissa','11812139403',19);

SELECT *FROM dados_pessoais WHERE idade = 20;
SELECT *FROM dados_pessoais WHERE idade = 20 AND cpf='12345678900'; /*where seria tipo if */

/*nao deixa criar duas ids iguais --> primary key*/
CREATE TABLE cliente(
id INT PRIMARY KEY 	AUTO_INCREMENT,				   
nome VARCHAR(30) NOT NULL,
celular INT(9)
);

INSERT INTO cliente (id,nome,celular) VALUES(0,'lari',123456789); /* add */
show tables;
select * from cliente; /* aparece tudo da tabela --> má prática*/
select nome * from cliente; /* mostra só o nome do cliente*/
INSERT INTO cliente (nome,celular) VALUES ('coxinha',000000009),('pastel',000000008); /* add 2*/
select * from cliente where id =1;

/*trocar nome do usuário*/
UPDATE cliente SET nome = 'testeupdate'; /* pega todos os valores e iguala a testeupdate -> n é mt bom*/
/* focar só em um -->*/
UPDATE cliente SET nome = 'larissa' WHERE id=1; /* seta larissa se o id=1*/
UPDATE cliente SET nome = 'coxinhas' WHERE id=2;
UPDATE cliente SET nome = 'pasteel' WHERE id=3;

delete from /* deletar*/

CREATE TABLE mercado(nome VARCHAR(20) NOT NULL, cpf CHAR(11) NOT NULL, cartao CHAR(10) NOT NULL,idade INT);
insert into mercado(nome,cpf,cartao,idade) VALUES('pam','12345678900','1234512345',18),('lari','00123456789','2121212121',21);
insert into mercado(nome,cpf,cartao,idade) VALUES('apagar','11223344556','9988776655',40);	
delete from mercado where idade=40;

ALTER TABLE mercado ADD COLUMN id INT PRIMARY KEY AUTO_INCREMENT; /* cria uma coluna nova ....auto increment só pode pra chave primaria*/ 
ALTER TABLE mercado DROP COLUMN idade; /* tudo que for mecher na estrutura começa com alter table*/


/*chave estrangeira */
/* id_cliente tá guardando a referência do id (ponteiro)*/

CREATE TABLE cartao(
id INT PRIMARY KEY AUTO_INCREMENT,
numero VARCHAR(30) NOT NULL,
id_cliente INT NOT NULL );

INSERT INTO cartao (numero,id_cliente) VALUES ('1234567890',1);
SELECT * FROM mercado u INNER JOIN cartao c ON u.id = c.id_cliente; /* u --> equivalência --> se referindo à tabela cliente <--INNER JOIN É p juntar a tabela*/ 
/* no lugar do c e do u pode colocar cliend.id=id_cliente */

CREATE database dados;
USE dados; /*só precisa chaamar uma vez*/
CREATE TABLE pessoas(nome VARCHAR (30),cpf VARCHAR(11),idade INT);
INSERT INTO pessoas(nome,cpf,idade) VALUES ('larissa','11812139403',21),('pam','81977905404',18);
INSERT INTO pessoas(nome,cpf,idade) VALUES ('coxinha','12345678900',19),('pastel','98765432100',20);
DELETE from pessoas where idade=20;
DROP TABLE dados; /*deleta a table --> não tem volta */
DROP DATABASE dados; /* deleta o banco de dados*/

									--> MERCADO <-- 
FOREIGN KEY(id_cliente) REFERENCES cliente (id); /* ID CLIENTE = CHAVE ESTRANGEIRA -- REFERENCIA NOME DA TABELA E (ATRIBUTO DA TABELA) */
--> RELACIONA OS DOIS <--

CREATE TABLE pessoa(
nome VARCHAR(30) NOT NULL,
tamanho VARCHAR(3) NOT NULL,
id INT PRIMARY KEY AUTO_INCREMENT);

CREATE TABLE roupa(	
	cor VARCHAR (10) NOT NULL,
	tamanho_roupa VARCHAR(3) NOT NULL,
	tipo VARCHAR (15),
	id_roupa INT PRIMARY KEY AUTO_INCREMENT,
	FOREIGN KEY(id_roupa) REFERENCES pessoa (id));

INSERT INTO pessoa(nome,tamanho) VALUES ('larissa','G');
INSERT INTO roupa(cor,tamanho_roupa,tipo) VALUES ('azul','G','CAMISA');

SELECT *FROM roupa u INNER JOIN pessoa c ON  u.id_roupa = c.id; /* nao colocar chave estrangeira em pessoas */


netflix --> 
CREATE DATABASE netflix;

USE netflix;

CREATE TABLE diretor(
id INT AUTO_INCREMENT,
nome VARCHAR(40) NOT NULL,
idade INT NOT NULL,
PRIMARY KEY(id)
);


CREATE TABLE filme (
id INT AUTO_INCREMENT,
nome VARCHAR(40) NOT NULL,
ano CHAR(4) NOT NULL,
genero VARCHAR(30) NOT NULL,
duracao CHAR(7) NOT NULL,
id_diretor INT,
FOREIGN KEY (id_diretor) REFERENCES diretor(id),
PRIMARY KEY (id)
);


INSERT INTO diretor(nome, idade) VALUES ('James Cameron', 63), ('Michael Bay', 53);


INSERT INTO filme (nome, ano, genero, duracao, id_diretor) VALUES ('Titanic', '1997', 'Romance', '195min', 1), ('Avatar', '2009', 'Ficcao Cientifica', '162min', 1), ('Exterminador do Futuro', '1984', 'Ficcao Cientifia', '108min', 1), ('Armageddon', '1998', 'Drama', '151min', 2), ('Transformers', '2007', 'Acao', '143min', 2), ('Transformers 2', '2009', 'Acao', '150min', 2), ('Transformers 3', '2011', 'Acao', '157min', 2), ('Transformers 4', '2014', 'Acao', '166min', 2);

/*CADASTRO */
CREATE TABLE usuario (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(15) NOT NULL UNIQUE,
senha VARCHAR(20) NOT NULL

);
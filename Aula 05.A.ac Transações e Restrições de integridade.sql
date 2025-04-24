/* Aula 05.A.ac Transações e Restrições de integridade
*/
/* 
Questão 1.
*/

CREATE TABLE pessoa (
    ID INT,
    nome NVARCHAR(100),
    sobrenome NVARCHAR(100),
    idade INT CONSTRAINT CK_idade_positiva CHECK (idade >= 0)
);


/*

Questão 2.

*/

ALTER TABLE pessoa
ADD CONSTRAINT UQ_pessoa_ID_nome_sobrenome UNIQUE (ID, nome, sobrenome);


/*

Questão 3.

*/

ALTER TABLE pessoa
ALTER COLUMN idade INT NOT NULL;



/*

Questão 4.
*/


CREATE TABLE endereco (
    ID INT PRIMARY KEY,
    rua NVARCHAR(200)
);


ALTER TABLE pessoa
ADD endereco_id INT;


ALTER TABLE pessoa
ADD CONSTRAINT FK_pessoa_endereco 
FOREIGN KEY (endereco_id) REFERENCES endereco(ID);


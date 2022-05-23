CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios (
	id bigint auto_increment NOT NULL,
    nome varchar (255) NOT NULL,
	idade smallint (3),
    sexo varchar (255),
    setor varchar (200),
    salario decimal (10,2) NOT NULL,
    
    PRIMARY KEY (id)
);

INSERT INTO tb_funcionarios 
(nome, idade, sexo, setor, salario) VALUES
("Augusto", 22, "Masculino","Tecnologia", 1025.80),
("Lele", 25, "Masculino", "Desenvolvimento Web", 3409.67),
("Carol Trindade", 23, "Feminino", "Serviço Social", 3500),
("Bersano", 22, "Masculino", "Board de Diretores", 100000),
("camis", 24, "Feminino", "Desenvolvimento Web", 1999.99),
("Léo", 30, "Masculino", "Instrução Profissional", 2000.00) 
;

UPDATE tb_funcionarios SET salario = 2000.01 WHERE id = 6;

SELECT * FROM tb_funcionarios WHERE salario > 2000;

SELECT * FROM tb_funcionarios WHERE salario < 2000;

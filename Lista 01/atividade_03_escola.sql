CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos (
	id bigint auto_increment NOT NULL,
    nome varchar (255) NOT NULL,
	idade smallint (3),
    sexo varchar (255),
    grau varchar (200),
    ra int (5) NOT NULL,
    media_nota decimal (10,2) NOT NULL,
    cpf varchar (11),
    responsavel varchar (50),
    
    PRIMARY KEY (id)
);


INSERT INTO tb_alunos 
(nome, idade, sexo, grau, ra, media_nota, cpf, responsavel) VALUES
("Henrique M.", 15, "Masculino","Ensino Médio", 245678, 6.9, "34567890580", "Mãe"),
("Jordana G.", 13, "Feminino","Ensino Fundamental", 56789, 7.8, "78945634501", "Pai"),
("Merhy H.", 10, "Feminino","Ensino Fundamental", 80967, 7.1, "80978956712", "Avós"),
("Nathalia F.", 17, "Feminino","Ensino Médio", 78965, 6.0, "09867845678", "Mãe")
;


SELECT * FROM tb_alunos WHERE media_nota > 7.0;

SELECT * FROM tb_alunos WHERE media_nota < 7.0;

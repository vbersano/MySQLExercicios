CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
id BIGINT NOT NULL AUTO_INCREMENT,
tarja VARCHAR (255) NOT NULL,
generico BOOLEAN DEFAULT false,

PRIMARY KEY (id)
);

INSERT INTO tb_categorias (tarja, generico) VALUES
("VENDA SOBRE PRESCRIÇÃO MÉDICA", true),
("VENDA SOBRE PRESCRIÇÃO MÉDICA", false),
("ISENTO DE PRESCRIÇÃO", false),
("ISENTO DE PRESCRIÇÃO", true)
;

CREATE TABLE tb_produtos (
id BIGINT NOT NULL AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
validade DATE NOT NULL,
laboratorio VARCHAR (255),
preco DECIMAL (8,2) NOT NULL,

PRIMARY KEY (id),
FOREIGN KEY (id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, validade, laboratorio, preco) VALUES 
("Ivermectina", '2026-10-22', "EMS", 55.00),
("Venvanse", '2024-09-05', "Shire", 300.00),
("Benegrip", '2023-01-18', "Hypera", 20.00),
("Loratadina", '2023-11-07', "Neo Quimica", 10.00);

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id = tb_categorias.id
WHERE preco > 50.00;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id = tb_categorias.id
WHERE preco > 5.00 AND preco < 60.00;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id = tb_categorias.id
WHERE nome LIKE "%c%";


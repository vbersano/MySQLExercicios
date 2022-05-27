CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias
(
id BIGINT AUTO_INCREMENT,
tarja VARCHAR (255),
generico VARCHAR (255),

PRIMARY KEY(id)
);

INSERT INTO tb_categorias (tarja, generico) VALUES
("VENDA SOBRE PRESCRIÇÃO MÉDICA", "GENERICO"),
("VENDA SOBRE PRESCRIÇÃO MÉDICA", "NÃO GENERICO"),
("ISENTO DE PRESCRIÇÃO", "NÃO GENERICO"),
("ISENTO DE PRESCRIÇÃO", "GENERICO")
;

CREATE TABLE tb_produtos
(
id BIGINT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (255),
validade DATE,
laboratorio VARCHAR (255),
preco DECIMAL (8,2),
tarja_id BIGINT,

FOREIGN KEY (tarja_id) REFERENCES tb_categorias(id)
);


INSERT INTO tb_produtos (nome, validade, laboratorio, preco) VALUES ("Ivermectina", '2026-10-22', "EMS", 55.00);
INSERT INTO tb_produtos (nome, validade, laboratorio, preco) VALUES ("Venvanse", '2024-09-05', "Shire", 300.00);
INSERT INTO tb_produtos (nome, validade, laboratorio, preco) VALUES ("Benegrip", '2023-01-18', "Hypera", 20.00);
INSERT INTO tb_produtos (nome, validade, laboratorio, preco) VALUES ("Loratadina", '2023-11-07', "Neo Quimica", 10.00);
INSERT INTO tb_produtos (nome, validade, laboratorio, preco) VALUES ("Viagra", '2022-11-11', "Pfizer", 70.00);
INSERT INTO tb_produtos (nome, validade, laboratorio, preco) VALUES ("Lipitor", '2025-12-06', "Pfizer", 50.00);
INSERT INTO tb_produtos (nome, validade, laboratorio, preco) VALUES ("Tylenol", '2023-02-26', "Johnson & Johnson", 30.00);
INSERT INTO tb_produtos (nome, validade, laboratorio, preco) VALUES ("Doril", '2022-05-10', "Cosmed", 24.99);


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
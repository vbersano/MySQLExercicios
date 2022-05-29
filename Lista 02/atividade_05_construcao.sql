CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE  tb_categorias (
id BIGINT AUTO_INCREMENT NOT NULL,
departamento VARCHAR (100),
produto VARCHAR (100),

PRIMARY KEY (id)
);

INSERT INTO tb_categorias (departamento, produto) VALUES
("Hidraulica", "Canos e Conexões Hidraulicas"), -- 1
("Eletrica", "Cabos e Fios Elétricos"), -- 2
("Materiais de Construção", "Argamassas"), -- 3
("Esquadrias", "Janelas"), -- 4
("Materiais de Construção", "Aços para Construção"); -- 5

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT NOT NULL,
nome varchar (100),
preco decimal (10,2),
marca varchar (100),
norma varchar (20),
categorias_id BIGINT,

PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, preco, marca, norma, categorias_id) VALUES
("Cano PVC Marrom Soldável 3m 3/4" , 21.90, "Tigre", "NBR 5648", 1),
("Cabo Flexível 16mm 100Metros Preto" , 1399.90, "SIL Fios", "NBR 247-3", 2),
("Concreto Pronto 20kg" , 32.90, "Jofege", "NBR 11578", 3),
("Janela De Alumínio 04 Folhas Classic Preto - 1,20x2,00m" , 1143.87, "Mercosul Portas & Janelas", "NBR 10821", 4),
("Vergalhão CA-50 12,5mm (1/2'')" , 134.90, "ArcelorMittal", "NBR 7480", 5),
("Cano PVC para Esgoto 100mm ou 4'' 3m Tigre" , 72.28, "Tigre", "NBR 5648", 1),
("Cabo Flexível Silnax 2x1,5mm 100Metros 0,6/1 kV HEPR 90C" , 464.90, "SIL Fios", "NBR 247-3", 2),
("Argamassa Nivela Rápido Interno Cinza 20kg" , 99.90, "Quartzolit", "NBR 11578", 3);

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id
WHERE preco > 100.00;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id
WHERE preco > 70.00 AND preco < 150.00;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id
WHERE nome LIKE "%Cabo%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id
WHERE departamento LIKE "%Hidraulica%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id;
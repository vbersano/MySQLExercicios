CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
	id bigint auto_increment NOT NULL,
    nome varchar (255) NOT NULL,
    preco decimal (10,2) NOT NULL,
    cor varchar(255),
    tamanho varchar (2),
    qtd_estoque bigint,
    
    PRIMARY KEY (id)
);


INSERT INTO tb_produtos 
(nome, preco, cor, tamanho, qtd_estoque) VALUES
("Calça Moletom Reta", 299.99, "Azul Marinho", "M", 255),
("Camiseta Básica", 49.90, "Preta", "M", 432),
("Casaco Moletom", 599.99, "Cinza Mescla", "G", 390),
("Jaqueta de Couro", 599.99, "Rosa", "M", 255);

SELECT * FROM tb_produtos WHERE preco < 500;

SELECT * FROM tb_produtos WHERE preco > 500;


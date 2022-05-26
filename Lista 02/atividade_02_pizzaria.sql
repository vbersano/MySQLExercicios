CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
id BIGINT NOT NULL AUTO_INCREMENT,
classe VARCHAR (50),
tipo VARCHAR(100),

PRIMARY KEY (id)
);

INSERT INTO tb_categorias (classe, tipo)
VALUES 
("Salgada", "Pizza Napolitana"),
("Doce", "Pizza Pan"),
("Salgada", "Pizza Diet"),
("Salgada", "Pizza Chicago");



CREATE TABLE tb_pizzas (
id BIGINT NOT NULL AUTO_INCREMENT,
sabor VARCHAR (255),
preco DECIMAL (20,2),
ingredientes VARCHAR(255),
calorias_fatia INT,

PRIMARY KEY (id),
FOREIGN KEY (id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (sabor, preco, ingredientes, calorias_fatia)
VALUES 
("Margherita", 50.00, "Queijo, Tomate, Parmesão, Oregano, Manjericão, Molho de Tomate", 200),
("Chocolate", 30.00, "Chocolate derretido", 250),
("Atum", 40.00, "Atum, Queijo, Oregano", 120),
("Pepperoni", 60.00 ,"Pepperoni, Queijo, Molho de Tomate, Oregano", 230);

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id = tb_categorias.id
WHERE classe LIKE "Salgada";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id = tb_categorias.id
WHERE sabor LIKE "%M%";

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
categorias_id bigint,

PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (sabor, preco, ingredientes, calorias_fatia, categorias_id)
VALUES 
("Margherita", 50.00, "Queijo, Tomate, Parmesão, Oregano, Manjericão, Molho de Tomate", 200, 1),
("Chocolate", 30.00, "Chocolate derretido", 250, 2),
("Atum", 40.00, "Atum, Queijo, Oregano", 120, 3),
("Pepperoni", 60.00 ,"Pepperoni, Queijo, Molho de Tomate, Oregano", 230, 4),
("M&M", 35.00, "Chocolate Derretido, M&M", 270, 2),
("Calabresa", 32.00, "Calabresa Fatiada, Cebola, Molho de tomate", 200, 1),
("4 Queijos", 38.00, "Mozarella, Parmesão, Provolone, Gorgonzola", 280, 3),
("Mozarella", 25.00, "Mozarella, Azeite, Oregano", 210, 4);

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id;

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id
WHERE classe LIKE "Salgada";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id
WHERE sabor LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id
WHERE preco > 45.00;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id
WHERE preco > 50.00 AND preco < 100.00;
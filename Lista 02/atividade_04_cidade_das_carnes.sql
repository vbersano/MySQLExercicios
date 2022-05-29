CREATE DATABASE cidade_das_carnes;

USE cidade_das_carnes;

create table tb_categorias (
id BIGINT AUTO_INCREMENT NOT NULL,
especie varchar (50),
animal varchar (50),

primary key (id)
);

INSERT INTO tb_categorias (especie, animal) VALUES
("Carne Bovina", "Angus"),
("Carne Bovina", "Wagyu"),
("Carne Aviaria", "Galinha da Angola"),
("Carnes de Pescados", "Salmão"),
("Carne Aviaria", "Galinha Carijó");

create table tb_produtos (
id BIGINT AUTO_INCREMENT NOT NULL,
departamento_id bigint,
corte varchar (50),
preco decimal (8,2),
validade date,

primary key (id),
FOREIGN KEY (departamento_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (corte, preco, validade, departamento_id) VALUES
("Picanha", 200.00, '2022-11-07', 1),
("Filé-Mingnon", 500.00, '2022-08-12', 2),
("Sobre Coxa", 20.00, '2022-10-17', 3),
("Filé", 55.00, '2022-05-10', 4),
("Coxa", 15.00, '2023-02-10', 5),
("Maminha", 60.00, '2022-08-12', 2),
("Costela", 70.00, '2022-11-07', 1),
("Sassami", 30.00, '2022-10-17', 3);

SELECT * FROM tb_produtos INNER JOIN tb_categorias
on tb_produtos.departamento_id = tb_categorias.id
WHERE preco > 50.00;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
on tb_produtos.departamento_id = tb_categorias.id
WHERE preco > 50.00 and preco < 150.00;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
on tb_produtos.departamento_id = tb_categorias.id
WHERE corte LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
on tb_produtos.departamento_id = tb_categorias.id;


SELECT * FROM tb_produtos INNER JOIN tb_categorias
on tb_produtos.departamento_id = tb_categorias.id
WHERE especie LIKE "%Aviaria%";

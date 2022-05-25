CREATE database db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes ( 

id bigint AUTO_INCREMENT,
classe varchar(255) NOT NULL,
nivel int(3),
vigor smallint,
stamina smallint,
inteligencia smallint,
poder smallint,

PRIMARY KEY (id)
);

INSERT INTO tb_classes (classe, nivel, vigor, stamina, inteligencia, poder)
VALUES 
("Samurai", 9, 300, 500, 50, 3000),
("Arcano", 7, 100, 100, 500, 1900),
("Guerreiro", 8, 500, 300, 50, 2800),
("Prisioneiro", 4, 200, 200, 100, 1000),
("Ladro", 5, 200, 500, 300, 2100);



CREATE TABLE tb_personagens(
personagens_id bigint AUTO_INCREMENT,
nickname varchar(255) NOT NULL,
raca varchar(255),
item_especial varchar(255),

PRIMARY KEY (personagens_id),
FOREIGN KEY (personagens_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nickname, raca, item_especial)
VALUES 
("Sekiro", "Humano", "Braço Mecânico"),
("Gandalf", "Elfo", "Livro Arcano"),
("Gimli", "Anão", "Sangue de Balrog"),
("C Bronson", "Orc", "Lunetas do caos"),
("G Meneghetti", "Khajiit", "Manto da Invisibilidade")
;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON  personagens_id = tb_classes.id
WHERE nickname LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON  personagens_id = tb_classes.id
WHERE poder > 1000 and poder < 2000;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON  personagens_id = tb_classes.id
WHERE poder > 2000;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON  personagens_id = tb_classes.id
WHERE classe = "Ladro";

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON nickname LIKE "%c%";

SELECT * FROM tb_personagens RIGHT JOIN tb_classes
ON tb_personagens.personagens_id = tb_classes.id;

SELECT * FROM tb_personagens LEFT JOIN tb_classes
ON tb_personagens.personagens_id = tb_classes.id;

UPDATE tb_personagens
SET raca = "Humano"
WHERE personagens_id = 2;

UPDATE tb_classes
SET poder = 1100
WHERE id = 4;

ALTER TABLE tb_classes
MODIFY poder bigint;
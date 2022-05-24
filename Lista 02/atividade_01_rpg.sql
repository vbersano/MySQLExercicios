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
id bigint AUTO_INCREMENT,
nickname varchar(255) NOT NULL,
raca varchar(255),
item_especial varchar(255),

PRIMARY KEY (id),
FOREIGN KEY (classes_id) REFERENCES tb_personagens(id)
);

INSERT INTO tb_personagens (nickname, raca, item_especial)
VALUES 
("Sekiro", "Humano", "Braço Mecânico"),
("Gandalf", "Elfo", "Livro Arcano"),
("Gimli", "Anão", "Sangue de Balrog"),
("C Bronson", "Orc", "Lunetas do caos"),
("G Meneghetti", "Khajiit", "Manto da Invisibilidade")
;



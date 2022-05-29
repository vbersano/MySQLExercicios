CREATE DATABASE db_curso_da_minha_vida DEFAULT CHARACTER SET utf8 ;


USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
  id BIGINT NOT NULL AUTO_INCREMENT,
  materia VARCHAR(255) NULL,
  professor VARCHAR(255) NULL,
	
    PRIMARY KEY (id)
);

INSERT INTO tb_categorias (materia, professor) VALUES 
("Lógica de Programação em Java", "Andersson"),
("Orientação Profissional", "Léo"),
("Desenvolvimento Back End Java", "Rafael"),
("Desenvolvimento Front End", "Mark Zuckerberg"),
("Infraestrutura de Redes", "Augusto");


CREATE TABLE tb_cursos (
  id BIGINT NOT NULL AUTO_INCREMENT,
  valor DECIMAL(8,2),
  periodo VARCHAR(255),
  filial VARCHAR(255),
  duracaoMeses SMALLINT,
  tb_cursos_id BIGINT,
  
  PRIMARY KEY (id),
  FOREIGN KEY (tb_cursos_id) REFERENCES tb_cursos (id)
  );

INSERT INTO tb_cursos (valor, periodo, filial, duracaoMeses, tb_cursos_id) VALUES 
(449.99, "NOTURNO", "SÃO PAULO", 3, 1),
(549.99, "TARDE", "SÃO PAULO", 4, 2),
(999.99, "MATUTINO", "CAMPINAS", 5, 3),
(799.99, "INTEGRAL", "SÃO PAULO", 2, 4),
(400.50, "NOTURNO", "RECIFE", 1, 5),
(600.10, "INTEGRAL", "RECIFE", 2, 1),
(621.45, "NOTURNO", "SÃO PAULO", 6, 2),
(689.99, "MATUTINO", "SÃO PAULO", 3, 3);

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.tb_cursos_id = tb_categorias.id
WHERE valor > 500.00;

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.tb_cursos_id = tb_categorias.id
WHERE valor > 600.00 AND valor < 1000;

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.tb_cursos_id = tb_categorias.id
WHERE materia LIKE "%Java%";

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.tb_cursos_id = tb_categorias.id;

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.tb_cursos_id = tb_categorias.id
WHERE materia LIKE "%J%";


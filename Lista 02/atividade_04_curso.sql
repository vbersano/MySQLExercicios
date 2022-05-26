CREATE DATABASE db_curso_da_minha_vida DEFAULT CHARACTER SET utf8 ;

USE db_curso_da_minha_vida;

CREATE TABLE tb_cursos (
  id BIGINT NOT NULL AUTO_INCREMENT,
  valor DECIMAL(8,2) NOT NULL,
  periodo VARCHAR(255) NOT NULL,
  filial VARCHAR(255) NULL,
  duracaoMeses SMALLINT NULL,
  
  PRIMARY KEY (id)
  );

INSERT INTO tb_categorias (materia, professor) VALUES 
("Lógica de Programação em Java", "Andersson"),
("Orientação Profissional", "Léo"),
("Desenvolvimento Back End Java", "Rafael"),
("Desenvolvimento Front End", "Mark Zuckerberg"),
("Infraestrutura de Redes", "Augusto");


CREATE TABLE IF NOT EXISTS tb_categorias (
  id BIGINT NOT NULL AUTO_INCREMENT,
  materia VARCHAR(255) NULL,
  professor VARCHAR(255) NULL,
  tb_cursos_id BIGINT NOT NULL,
	
    PRIMARY KEY (id),

    FOREIGN KEY (tb_cursos_id) REFERENCES tb_cursos (id)
);

INSERT INTO tb_cursos (valor, periodo, filial, duracaoMeses) VALUES 
(449.99, "NOTURNO", "SÃO PAULO", 3),
(549.99, "TARDE", "SÃO PAULO", 4),
(999.99, "MATUTINO", "CAMPINAS", 5),
(799.99, "INTEGRAL", "SÃO PAULO", 2),
(400.50, "NOTURNO", "RECIFE", 1),
(600.10, "INTEGRAL", "RECIFE", 2),
(621.45, "NOTURNO", "SÃO PAULO", 6),
(689.99, "MATUTINO", "SÃO PAULO", 3);

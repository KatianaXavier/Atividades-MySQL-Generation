CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR (255),
    cor VARCHAR (255),
    
	PRIMARY KEY (id)
);

CREATE TABLE tb_personagens (
	id BIGINT AUTO_INCREMENT,
    id_classe BIGINT,
    nome VARCHAR (255),
    ataque BIGINT,
    defesa BIGINT,
    elemento VARCHAR (255),   

	PRIMARY KEY (id),
    FOREIGN KEY (id_classe) REFERENCES tb_classes (id)
);

INSERT INTO tb_classes (tipo, cor) VALUES 
("Arqueira", "Azul"),
("Bruxa", "Vermelha"),
("Maga", "Amarela"),
("Guerreira", "Verde"),
("Ninja", "Branca");

INSERT INTO tb_personagens (id_classe, nome, ataque, defesa, elemento) VALUES 
(1, "Gavioa", 1000, 1000, "Ar"),
(1, "Arco e Flexa", 9000, 8009, "Ar"),
(2, "Hermione", 7500, 8500, "Fogo"),
(2, "Ravena", 1000, 1000, "Terra"),
(3, "Scarlate", 8000, 9900, "Terra"),
(3, "Aqua Girl", 7000, 8000, "Água"),
(4, "Mulan", 7000, 1000, "Terra"),
(5, "Spadachin", 6000, 6500, "Ar");

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id WHERE tb_classes.id = 1;
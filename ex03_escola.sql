CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos (
	id BIGINT AUTO_INCREMENT, 
	nome_aluno VARCHAR (255),
	ano_nascimento INT (4),
    turno VARCHAR (255),
    professora VARCHAR (255),
    transporte_escolar BOOLEAN,
    nota DECIMAL (4,2),
    
    PRIMARY KEY(id)
);

SELECT * FROM tb_alunos;

INSERT INTO tb_alunos(nome_aluno, ano_nascimento, turno, professora, transporte_escolar, nota) VALUES 
("Lunna", 2012, "manhã", "Tatiana", true, 10), 
("Daniel", 2012, "manhã", "Tatiana", true, 7), 
("Agatha", 2013, "manhã", "Tatiana", true, 9), 
("Gustavo", 2011, "manhã", "Tatiana", true, 8), 
("Lorena", 2012, "tarde", "Ana", false, 8), 
("Nicolas", 2013, "manhã", "Tatiana", true, 6), 
("Katiana", 2014, "tarde", "Ana", false, 8), 
("Rafael", 2013, "tarde", "Ana", false, 9);

SELECT *
FROM tb_alunos
WHERE nota > 7;

SELECT *
FROM tb_alunos
WHERE nota < 7;

UPDATE tb_alunos
SET nota = 9
WHERE id = 1;
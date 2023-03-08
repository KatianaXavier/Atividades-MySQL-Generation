-- cria o banco de dados rh
CREATE DATABASE db_rh;

-- indica o banco de dados usado
USE db_rh;

-- cria tabela colaboradores
CREATE TABLE tb_colaboradores (
	id BIGINT AUTO_INCREMENT, 
	nome VARCHAR (255),
    idade INT (2),
    cargo VARCHAR (255),
    setor VARCHAR (255),
	salario DECIMAL (8,2),
    
    PRIMARY KEY(id)
    
);

-- comando que mostra todos os dados da tabela de colaboradores
SELECT * FROM tb_colaboradores;

-- inserindo dados na tabela
INSERT INTO tb_colaboradores(nome, idade, cargo, setor, salario) VALUES ("Katiana", 27, "Software Engineer", "Tecnologia", 7000),("Lunna", 19, "Redatora", "Comunicação", 6000),("Rebeca", 20, "Estagiária de Social Media", "Comunicação", 1999),("Fran", 52, "Líder de Reparos", "Serviços Gerais", 5700),("Rafael", 32, "Back-End Developer", "Tecnologia", 9000);

-- selencionando colaboradores com salário maior  que 2000
SELECT *
FROM tb_colaboradores
WHERE salario > 2000;

-- selencionando colaboradores com salário menor que 2000
SELECT *
FROM tb_colaboradores
WHERE salario < 2000;

-- atualizando um dado da tabela
UPDATE tb_colaboradores 
SET salario = 10000
WHERE id = 1;
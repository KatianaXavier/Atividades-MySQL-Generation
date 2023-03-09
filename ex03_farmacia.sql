CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
	descricao VARCHAR (255) NOT NULL,
    cor_etiqueta VARCHAR (255),

	PRIMARY KEY (id)
);

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR (255),
    marca VARCHAR (255),
    preco DECIMAL (4,2),
    quantidade_estoque INT,
    categoria_id BIGINT,

	PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (descricao, cor_etiqueta) VALUES 
("Higiene Pessoal", "Azul"),
("Medicamentos", "Vermelho"),
("Alimentos", "Amarelo"),
("Cosméticos", "Verde"),
("Cuidados Infantis", "Branco");

INSERT INTO tb_produtos (nome, marca, preco, quantidade_estoque, categoria_id) VALUES 
("Sabonete", "Protex", 08.00, 300, 1),
("Desodorante", "Rexona", 10.00, 150 , 1),
("Dipirona", "Genérico", 04.50, 500, 2),
("Amoxicilina", "Genérico", 15.00 , 450, 2),
("Barra de Cereal", "Nutry", 07.50, 100, 3),
("Chiclete", "Trident", 05.00, 90, 3),
("Lip Balm", "Nivea", 20.00, 250, 4),
("Fralda", "Pampers", 35.00, 400, 5);

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco >= 05.00 AND preco <= 60.00; 

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id
WHERE tb_categorias.descricao = "Cosméticos";
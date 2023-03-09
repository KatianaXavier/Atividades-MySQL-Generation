CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT, 
	nome_produto VARCHAR (255),
    categoria VARCHAR (255),
    marca VARCHAR (255),
    quantidade_estoque INT (4),
	preco DECIMAL (8,2),
    
    PRIMARY KEY(id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome_produto, categoria, marca, quantidade_estoque, preco) VALUES ("Smartphone Xiaomi", "eletrônicos", "Xiaomi", 500, 2000), ("Smartphone Iphone", "eletrônicos", "Apple", 10, 8000), ("Kindle 10a geração", "eletrônicos", "Kindle", 300, 500), ("Robô Aspirador", "eletrodomésticos", "Philco", 90, 4800), ("Laptop", "eletrônicos", "Lenovo", 500, 3500), ("Aspirador de Pó", "eletrodomésticos", "Eletrolux", 100, 360), ("Geladeira", "eletrodomésticos", "Panasonic", 500, 2000), ("Impressora", "eletrônicos", "HP", 110, 600);

SELECT *
FROM tb_produtos
WHERE preco > 500;

SELECT *
FROM tb_produtos
WHERE preco < 500;

UPDATE tb_produtos 
SET preco = 2200
WHERE id = 1;
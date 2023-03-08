-- cria o banco de dados
CREATE DATABASE db_quitanda;

-- indica o banco de dados usado
USE db_quitanda;

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT, 
	nome_produto VARCHAR (255),
	preco DECIMAL (6,2),
    
    PRIMARY KEY(id)
    
);
-- comando que mostra todos os dados da tabela de produtos
SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome_produto, preco) VALUES ("Maçã", 3.00),("Laranja", 7.00);

-- desativa o modo seguro e permite update e delete
SET SQL_SAFE_UPDATES = 0;

-- atualiza um dado dentro da tabela
UPDATE tb_produtos SET preco = 7.90;   
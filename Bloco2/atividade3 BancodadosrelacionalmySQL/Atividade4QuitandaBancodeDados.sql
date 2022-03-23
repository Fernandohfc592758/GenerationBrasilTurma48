CREATE DATABASE db_quitanda_fernando;

USE db_quitanda_fernando;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
    fruta VARCHAR(255) NOT NULL,
    fresco BOOLEAN NOT NULL,
    
    PRIMARY KEY (id)
    
);

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    precisa_pesar BOOLEAN NOT NULL,
    fh_id_categoria BIGINT,
    
    PRIMARY KEY (id),
    FOREIGN KEY (fh_id_categoria) references tb_categoria(id)  -- BUSCA ID ESTRANGEIRO
);

INSERT INTO tb_categoria (fruta, fresco) VALUES ("QUALIDADE 1", FALSE);
INSERT INTO tb_categoria (fruta, fresco) VALUES ("QUALIDADE 2", TRUE);
INSERT INTO tb_categoria (fruta, fresco) VALUES ("QUALIDADE PRIME", FALSE);
INSERT INTO tb_categoria (fruta, fresco) VALUES ("QUALIDADE OURO", TRUE);
INSERT INTO tb_categoria (fruta, fresco) VALUES ("QUALIDADE CLASSIC", FALSE);

SELECT * FROM tb_categoria;

INSERT INTO tb_produto (nome, preco, precisa_pesar, fh_id_categoria) VALUES ("Maça", 22.15, TRUE, 2);
INSERT INTO tb_produto (nome, preco, precisa_pesar, fh_id_categoria) VALUES ("Limão", 26.25, FALSE, 5);
INSERT INTO tb_produto (nome, preco, precisa_pesar, fh_id_categoria) VALUES ("Abacaxi", 33.16, FALSE, 3);
INSERT INTO tb_produto (nome, preco, precisa_pesar, fh_id_categoria) VALUES ("Mamão", 35.10, FALSE, 3);
INSERT INTO tb_produto (nome, preco, precisa_pesar, fh_id_categoria) VALUES ("Pera", 27.12, TRUE, 4);
INSERT INTO tb_produto (nome, preco, precisa_pesar, fh_id_categoria) VALUES ("Abacate", 58.45, TRUE, 4);
INSERT INTO tb_produto (nome, preco, precisa_pesar, fh_id_categoria) VALUES ("Laranja", 80.25, FALSE, 1);
INSERT INTO tb_produto (nome, preco, precisa_pesar, fh_id_categoria) VALUES ("Banana", 77.12, TRUE, 2);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco > 50; -- não tem

SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE nome LIKE "%C%"; -- Posicionando o % dessa forma, seleciona apenas a primeira letra

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto. fh_id_categoria = tb_categoria.id;

SELECT * FROM tb_produto LEFT JOIN tb_categoria ON tb_produto. fh_id_categoria = tb_categoria.id WHERE tb_categoria.fruta = "QUALIDADE OURO" 
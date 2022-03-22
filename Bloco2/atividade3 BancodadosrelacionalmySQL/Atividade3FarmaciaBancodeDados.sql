-- ATIVIDADE 3 DADOS RELACIONADOS

CREATE DATABASE db_farmacia_do_Fernando;
USE db_farmacia_do_Fernando;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    generico BOOLEAN NOT NULL,
    
    PRIMARY KEY (id)
    
);

CREATE TABLE tb_produto(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    precisa_receita BOOLEAN NOT NULL,
    fk_id_categoria BIGINT,
    
    PRIMARY KEY (id),
    FOREIGN KEY (fk_id_categoria) references tb_categoria(id)  -- BUSCA ID ESTRANGEIRO
);

INSERT INTO tb_categoria (nome, generico) VALUES ("cosméticos", false);
INSERT INTO tb_categoria (nome, generico) VALUES ("comprimidos", true);
INSERT INTO tb_categoria (nome, generico) VALUES ("xaropes", true);
INSERT INTO tb_categoria (nome, generico) VALUES ("pomadas", true);
INSERT INTO tb_categoria (nome, generico) VALUES ("outros", false);

SELECT * FROM tb_categoria;

INSERT INTO tb_produto (nome, preco, precisa_receita, fk_id_categoria) VALUES ("benegripe", 15.00, true, 2);
INSERT INTO tb_produto (nome, preco, precisa_receita, fk_id_categoria) VALUES ("vitamina C", 25.00, false, 5);
INSERT INTO tb_produto (nome, preco, precisa_receita, fk_id_categoria) VALUES ("xarope de menta", 30.00, true, 3);
INSERT INTO tb_produto (nome, preco, precisa_receita, fk_id_categoria) VALUES ("xarope de abacaxi", 35.00, true, 3);
INSERT INTO tb_produto (nome, preco, precisa_receita, fk_id_categoria) VALUES ("pomada vick", 27.00, false, 4);
INSERT INTO tb_produto (nome, preco, precisa_receita, fk_id_categoria) VALUES ("nebacetin", 18.75, false, 4);
INSERT INTO tb_produto (nome, preco, precisa_receita, fk_id_categoria) VALUES ("shampoo Seda", 22.00, false, 1);
INSERT INTO tb_produto (nome, preco, precisa_receita, fk_id_categoria) VALUES ("esmalte preto", 7.00, false, 1);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco > 50; -- não tem

SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE nome LIKE "%b%"; -- Posicionando o % dessa forma, seleciona apenas a primeira letra

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto. fk_id_categoria = tb_categoria.id;

select * from tb_produto LEFT JOIN tb_categoria ON tb_produto.fk_id_categoria = tb_categoria.id WHERE tb_categoria.nome = "cosméticos" -- "nome" é ambiguo, possui nas duas tabelas, então precisei especificar de qual tabela eu queria
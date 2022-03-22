-- atividade2 dados relacional
CREATE DATABASE db_pizzaria_fernando;

USE db_pizzaria_fernando;


-- criando tabela categoria TABELA 1
CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT, -- parei aqui ainda nao dei raio
tamanho VARCHAR (255) NOT NULL,
tipo VARCHAR (255) NOT NULL,

PRIMARY KEY (id)

);
-- criando tabela pizza TABELA2
CREATE TABLE tb_pizza(
id BIGINT AUTO_INCREMENT,
sabor VARCHAR(40) NOT NULL,
borda_recheada BOOLEAN NOT NULL,
preco DECIMAL (10,2) NOT NULL,
fk_id_categoria BIGINT,

PRIMARY KEY (id),
FOREIGN KEY (fk_id_categoria) REFERENCES tb_categoria(id)
);

SELECT * FROM tb_categoria;
SELECT * FROM tb_pizza;

INSERT INTO tb_categoria (tamanho, tipo) VALUES ("grande", "doce");
INSERT INTO tb_categoria (tamanho, tipo) VALUES ("grande", "salgada");
INSERT INTO tb_categoria (tamanho, tipo) VALUES ("media", "doce");
INSERT INTO tb_categoria (tamanho, tipo) VALUES ("media", "salgada");
INSERT INTO tb_categoria (tamanho, tipo) VALUES ("pequena", "doce");
INSERT INTO tb_categoria (tamanho, tipo) VALUES ("pequena", "salgada");

delete from tb_categoria where id = 0;

INSERT INTO tb_pizza (sabor, borda_recheada, preco, fk_id_categoria) VALUES ("Prestigio", false, 20.00, 5);
INSERT INTO tb_pizza (sabor, borda_recheada, preco, fk_id_categoria) VALUES ("Chocolate", false, 45.50, 1);
INSERT INTO tb_pizza (sabor, borda_recheada, preco, fk_id_categoria) VALUES ("Brócolis", true, 45.00, 2);
INSERT INTO tb_pizza (sabor, borda_recheada, preco, fk_id_categoria) VALUES ("Frango", false, 20.00, 6); -- alterar de 5 para 6
INSERT INTO tb_pizza (sabor, borda_recheada, preco, fk_id_categoria) VALUES ("Frango c/ catupiry", true, 26.00, 6);
INSERT INTO tb_pizza (sabor, borda_recheada, preco, fk_id_categoria) VALUES ("Romeu e julietta", false, 45.50, 1);
INSERT INTO tb_pizza (sabor, borda_recheada, preco, fk_id_categoria) VALUES ("Mussarela", false, 30.00, 4);
INSERT INTO tb_pizza (sabor, borda_recheada, preco, fk_id_categoria) VALUES ("Napolitana", true, 35.50, 4);



SELECT * FROM tb_pizza WHERE preco > 45; 

SELECT * FROM tb_pizza WHERE preco > 29 AND 60;

SELECT * FROM tb_pizza  WHERE sabor LIKE "%C%";




SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_pizza.  fk_id_categoria = tb_categoria.id;

SELECT * FROM tb_pizza LEFT JOIN tb_categoria ON tb_pizza.fk_id_categoria = tb_categoria.id WHERE tipo = "doce";

SELECT * FROM tb_pizza   -- relaciona uma tabela a outra
INNER JOIN tb_categoria ON tb_pizza. fk_id_categoria = tb_categoria.id;



-- conceito usado em sala com a jess, é o mesmo que o de cima
SELECT * FROM tb_classe   -- relaciona uma tabela a outra
INNER JOIN tb_personagem ON tb_personagem.classe_id = tb_classe.id
WHERE tb_classe.id = 3;   



-- alterar de 5 para 6 -- INSERT INTO tb_pizza (sabor, borda_recheada, preco, fk_id_categoria) VALUES ("Frango", false, 20.00, 6); -- alterar de 5 para 6

update tb_categoria set tipo = "doce" where id=1

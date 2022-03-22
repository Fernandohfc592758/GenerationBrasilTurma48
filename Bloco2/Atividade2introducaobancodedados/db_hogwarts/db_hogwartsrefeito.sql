create database db_hogwarts;  -- atividade 3  de banco de dados relacional Mysql

use db_hogwarts;

create table tb_estudantes(
    id bigint auto_increment,
    nome varchar(255),
    casa varchar(255),
    serie varchar(255),
    idade int,
    dominio varchar(255),
    nota int,

    primary key(id)
);

select * from tb_estudantes;

insert into tb_estudantes(nome, casa, serie, idade, dominio, nota) values ("Aimee","Lufa Lufa","2º Ano",14, "Herbologia", 10 );
insert into tb_estudantes(nome, casa, serie, idade, dominio, nota) values ("Igor","Corvinal","6ºAno",17, "Criaturas e Clarividencia", 10 );
insert into tb_estudantes(nome, casa, serie, idade, dominio, nota) values ("Nath","Sonserina","2º Ano",14, "Transfiguração", 10 );
insert into tb_estudantes(nome, casa, serie, idade, dominio, nota) values ("Jess","Grifinoria","3 º Ano", 20, "Alquimia", 5 );
insert into tb_estudantes(nome, casa, serie, idade, dominio, nota) values ("Jhonathan","Lufa Lufa","1º Ano",12, "Azaração", 10 );
insert into tb_estudantes(nome, casa, serie, idade, dominio, nota) values ("Lucas","Corvinal","2ºAno", 14, "Defesa contra as artes das trevas", 10 );
insert into tb_estudantes(nome, casa, serie, idade, dominio, nota) values ("Karina","Grifinoria","1ºano", 12, "Herbologia", 10 );
insert into tb_estudantes(nome, casa, serie, idade, dominio, nota) values ("Luiz","Sonserina","3º ano", 15, "Feitiços", 10  );

select * from tb_estudantes where nota > 7;

select * from tb_estudantes where nota < 7;

update tb_estudantes set nota = 3 where id= 2 ;

delete from tb_estudantes where id=2;

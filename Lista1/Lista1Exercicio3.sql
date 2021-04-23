create database db_escola;

use db_escola;

create table tb_alunes (
	id bigint auto_increment,
    nome varchar(30) not null,
    idade int(2),
    serie varchar(20),
    notas decimal(3,1),
    
    primary key (id)
);


insert into tb_alunes (nome, idade, serie, notas) value ("Aisha", 13, "7ª", 10.0);

insert into tb_alunes (nome, idade, serie, notas) value ("Luisa", 14, "8ª", 8.0);

insert into tb_alunes (nome, idade, serie, notas) value ("Larissa", 13, "6ª", 10.0);

insert into tb_alunes (nome, idade, serie, notas) value ("Maria Julia", 10, "3ª", 8.8);

insert into tb_alunes (nome, idade, serie, notas) value ("Ana", 16, "2º", 7.5);

insert into tb_alunes (nome, idade, serie, notas) value ("Luana", 13, "4ª", 5.5);

insert into tb_alunes (nome, idade, serie, notas) value ("Miguel", 12, "5ª", 6.0);

insert into tb_alunes (nome, idade, serie, notas) value ("Gabriel", 12, "5ª", 6.5);

select * from tb_alunes where notas > 7;

select * from tb_alunes where notas < 7;

update tb_alunes set notas = 8.0 where id = 5;


create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
	id bigint auto_increment,
	ensino varchar(100) not null,
	ead boolean not null,
	matricula boolean not null,
	primary key(id)
);

insert into tb_categoria (ensino, ead, matricula) values ("Pós-Graduação", true, true);
insert into tb_categoria (ensino, ead, matricula) values ("Graduação", true, true);
insert into tb_categoria (ensino, ead, matricula) values ("Mestrado", true, true);
insert into tb_categoria (ensino, ead, matricula) values ("Doutorado", true, true);
insert into tb_categoria (ensino, ead, matricula) values ("Pós-Doutorado", true, true);

select * from tb_categoria;

create table tb_curso(
	id bigint auto_increment,
    nome varchar(100) not null,
    valor decimal (10,2) not null,
    unidade varchar(100) not null,
    duracao bigint not null,
    turma bigint not null,
    categoriaID bigint,
    primary key(id),
    foreign key(categoriaID) references tb_categoria(id)
);

insert into tb_curso (nome, valor, unidade, duracao, turma, categoriaID) values ("Contabilidade", 500.00, "Heliópolis", 4, 10, 2);
insert into tb_curso (nome, valor, unidade, duracao, turma, categoriaID) values ("Química Forense", 2500.00, "Paulista", 2, 21, 1);
insert into tb_curso (nome, valor, unidade, duracao, turma, categoriaID) values ("Matemática", 1000.00, "Butantã", 2, 6, 3);
insert into tb_curso (nome, valor, unidade, duracao, turma, categoriaID) values ("Farmacologia", 1500.00, "Barra Funda", 4, 2, 4);
insert into tb_curso (nome, valor, unidade, duracao, turma, categoriaID) values ("Física Nuclear", 3000.00, "Paraíso", 2, 9, 5);
insert into tb_curso (nome, valor, unidade, duracao, turma, categoriaID) values ("Medicina", 6000.00, "Liberdade", 6, 25, 1);
insert into tb_curso (nome, valor, unidade, duracao, turma, categoriaID) values ("Ciência de Dados", 800.00, "Osasco", 2, 18, 1);
insert into tb_curso (nome, valor, unidade, duracao, turma, categoriaID) values ("Tecnologia Nuclear", 1500.00, "Pinheiros", 2, 31, 3);

select * from tb_curso;

-- Cursos com o valor maior do que 2000 reais.
select * from tb_curso where valor > 2000.00;

-- Cursos com valor entre 500 e 1500 reais.
select * from tb_curso where valor between 500 and 1500.0;

-- Selecione os cursos a letra F.
select * from tb_curso where nome like "F%";

-- Inner join entre tabela categoria e curso
select ensino, ead, matricula, tb_curso.nome, tb_curso.valor, tb_curso.unidade, tb_curso.duracao, tb_curso.turma
from tb_categoria
inner join tb_curso on tb_categoria.ID = tb_curso.categoriaID;

-- Todos os cursos da categoria específica Mestrado
select ensino, ead, matricula, tb_curso.nome, tb_curso.valor, tb_curso.unidade, tb_curso.duracao, tb_curso.turma
from tb_categoria
inner join tb_curso on tb_categoria.ID = tb_curso.categoriaID
where tb_categoria.ensino = "Mestrado";
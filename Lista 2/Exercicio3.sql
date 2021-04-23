create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
	id bigint auto_increment,
    departamento varchar(100) not null,
	tipo varchar(100) not null,
    receita boolean not null,
    primary key(id)
);

insert into tb_categoria (departamento, tipo, receita) values ("Cosméticos", "Hair Care", false);
insert into tb_categoria (departamento, tipo, receita) values ("Medicamentos", "Genéricos", true);
insert into tb_categoria (departamento, tipo, receita) values ("Higiene", "Bucal", false);
insert into tb_categoria (departamento, tipo, receita) values ("Mamãe e bebê", "Hora da Troca", false);
insert into tb_categoria (departamento, tipo, receita) values ("Saúde e bem estar", "Suplementos", false);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(100) not null,
marcar varchar(100) not null,
preco decimal (10,2) not null,
estoque bigint not null,
codigo bigint not null,
categoriaID bigint,
primary key (id),
foreign key (categoriaID) references tb_categoria(ID)
);

alter table tb_produto change marcar marca varchar(100) not null;

insert into tb_produto (nome, marca, preco, estoque, codigo, categoriaID) values ("Shampoo Hidratação", "Pantene", 21.99, 20, 65423, 1);
insert into tb_produto (nome, marca, preco, estoque, codigo, categoriaID) values ("Paracetamol", "Neo Química", 6.60, 100, 47586, 2);
insert into tb_produto (nome, marca, preco, estoque, codigo, categoriaID) values ("Escova Dental", "Colgate", 13.50, 32, 36985, 3);
insert into tb_produto (nome, marca, preco, estoque, codigo, categoriaID) values ("Fralda", "Pampers", 68.90, 87, 12345, 4);
insert into tb_produto (nome, marca, preco, estoque, codigo, categoriaID) values ("Vitamina C", "Redoxon", 19.99, 45, 24758, 5);
insert into tb_produto (nome, marca, preco, estoque, codigo, categoriaID) values ("Desodorante", "Dove", 12.50, 71, 89475, 1);
insert into tb_produto (nome, marca, preco, estoque, codigo, categoriaID) values ("Dipirona Sódica", "EMS", 4.49, 120, 96584, 2);
insert into tb_produto (nome, marca, preco, estoque, codigo, categoriaID) values ("Toalha Umedecida", "Huggies", 14.90, 65, 14586, 4);

select * from tb_produto;

-- Produtos com o valor maior do que 50 reais
select * 
from tb_produto 
where preco > 50;

-- Produtos com valor entre 3 e 60 reais
select * 
from tb_produto 
where preco between 3.00 and 60.00;

-- Produtos que contem a letra D
select * 
from tb_produto
where nome like "D%";

-- Inner join entre tabela categoria e produto
select departamento, tipo, receita, tb_produto.nome, tb_produto.marca, tb_produto.preco, tb_produto.estoque, tb_produto.codigo
from tb_categoria
inner join tb_produto on tb_categoria.id = tb_produto.categoriaID;

-- Produtos do departamento Cosméticos
select departamento, tipo, receita, tb_produto.nome, tb_produto.marca, tb_produto.preco, tb_produto.estoque, tb_produto.codigo
from tb_categoria
inner join tb_produto on tb_categoria.id = tb_produto.categoriaID where tb_categoria.departamento = "Cosméticos";
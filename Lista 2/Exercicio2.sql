create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
	id bigint auto_increment,
    tipo varchar(100) not null,
    bordaRecheada boolean not null,
    tamanho char not null,
	primary key (id)
);

insert into tb_categoria (tipo, bordaRecheada, tamanho) values ("doce", true, 'P');
insert into tb_categoria (tipo, bordaRecheada, tamanho) values ("doce", false, 'G');
insert into tb_categoria (tipo, bordaRecheada, tamanho) values ("salgada", true, 'G');
insert into tb_categoria (tipo, bordaRecheada, tamanho) values ("salgada", false, 'G');
insert into tb_categoria (tipo, bordaRecheada, tamanho) values ("salgada", true, 'P');

select * from tb_categoria;

create table tb_pizza(
	id bigint auto_increment,
    sabor varchar(100) not null,
    preco decimal (10,2) not null,
    adicional varchar(100),
    remover varchar(100),
    disponivel boolean not null,
    categoriaID bigint,
    primary key (id),
    foreign key(categoriaID) references tb_categoria(id)
);

insert into tb_pizza (sabor, preco, adicional, remover, disponivel, categoriaID) values ("Mussarela", 21.50, "Aliche", "Tomate", true, 3);
insert into tb_pizza (sabor, preco, remover, disponivel, categoriaID) values ("Calabresa", 32.00, "Cebola", true, 5);
insert into tb_pizza (sabor, preco, adicional, disponivel, categoriaID) values ("Brigadeiro", 45.90 , "Morango", true, 2);
insert into tb_pizza (sabor, preco, adicional, remover, disponivel, categoriaID) values ("Frango", 41.50, "Catupiry", "Azeitona", true, 4);
insert into tb_pizza (sabor, preco, adicional, disponivel, categoriaID) values ("Banana", 29.90, "Chocolate Branco", true, 1);
insert into tb_pizza (sabor, preco, adicional, remover, disponivel, categoriaID) values ("Portuguesa", 51.90, "Bacon", "Ovo", true, 3);
insert into tb_pizza (sabor, preco, remover, disponivel, categoriaID) values ("Bahiana", 25.50, "Cebola", true, 5);
insert into tb_pizza (sabor, preco, disponivel, categoriaID) values ("Marguerita", 37.50, true, 4);

select * from tb_pizza;

-- mostrar com valor acima de 45 reais.
select * from tb_pizza where preco > 45.00;

-- mostra pizza com valor entre 29 e 60 reais.
select * from tb_pizza where preco between 29.00 and 60.00;

-- mostrar pizzas com a letra C
select * 
from tb_pizza
where sabor like "C%";

-- junção de tabelas
select tipo, bordaRecheada, tamanho, tb_pizza.sabor, tb_pizza.preco, tb_pizza.adicional, tb_pizza.remover, disponivel
from tb_categoria
inner join tb_pizza on tb_categoria.ID = tb_pizza.categoriaID;

-- mostrar mostrar pizzas doces
select tipo, bordaRecheada, tamanho, tb_pizza.sabor, tb_pizza.preco, tb_pizza.adicional, tb_pizza.remover, disponivel
from tb_categoria
left join tb_pizza on tb_categoria.ID = tb_pizza.categoriaID
where tb_categoria.tipo = "Doce";
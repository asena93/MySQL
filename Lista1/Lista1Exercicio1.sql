create database db_loja;

use db_loja;

create table tb_produtos (
	id bigint auto_increment,
    nome varchar(40) not null,
    preco_unitario decimal(10,2) not null,
    quantidade_estoque int(10) not null,
    marca varchar(20),
    
    primary key (id)
);

select * from tb_produtos;

insert into tb_produtos (nome, preco_unitario, quantidade_estoque, marca) 
	values ("Iphone 12 128GB", 5500.00, 50, "Apple");
    
    insert into tb_produtos (nome, preco_unitario, quantidade_estoque, marca) 
	values ("Iphone 12 pro 256GB", 7546.00, 50, "Apple");
    
    insert into tb_produtos (nome, preco_unitario, quantidade_estoque, marca) 
	values ("Galaxy S21 128GB", 4420.00, 50, "Samsung");
    
    insert into tb_produtos (nome, preco_unitario, quantidade_estoque, marca) 
	values ("Galaxy S21 Ultra 128GB", 6600.00, 50, "Samsung");
    
    insert into tb_produtos (nome, preco_unitario, quantidade_estoque, marca) 
	values ("Galaxy Buds", 399.90, 50, "Samsung");
    
    insert into tb_produtos (nome, preco_unitario, quantidade_estoque, marca) 
	values ("Silicon Case Iphone 12", 50.00, 50, "Apple");
    
    insert into tb_produtos (nome, preco_unitario, quantidade_estoque, marca) 
	values ("Silicon Case G S21 Ultra", 40.00, 50, "Samsung");
    
    insert into tb_produtos (nome, preco_unitario, quantidade_estoque, marca) 
	values ("Base de Carregamento Anker", 299.00, 50, "Anker");
    
select * from tb_produtos where preco_unitario > 500;

select * from tb_produtos where preco_unitario < 500;

update tb_produtos set quantidade_estoque = 25 where id = 1;

update tb_produtos set quantidade_estoque = 25 where id = 6;

    


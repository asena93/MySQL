create database db_rh_empresa;

use db_rh_empresa;

create table tb_funcionaries (
	id bigint(5) auto_increment,
    nome varchar(50) not null,
    idade int(2),
    cargo varchar(20),
    salario decimal(10,2) not null,
    
    primary key (id)
    
);

insert into tb_funcionaries (nome, idade, cargo, salario) 
	values ("Alessandro Sena", 28, "Dev Java PL", 9000.00);
    
insert into tb_funcionaries (nome, idade, cargo, salario) 
	values ("Ida Katharina", 23, "Advogada", 8500.00);
    
insert into tb_funcionaries (nome, idade, cargo, salario) 
	values ("Bruna", 28, "Dev Java Pleno", 7500.00);
    
insert into tb_funcionaries (nome, idade, cargo, salario) 
	values ("Deny", 28, "Dev Front End", 6541.80);
    
insert into tb_funcionaries (nome, idade, cargo, salario) 
	values ("Bruna Dias", 28, "Ass Administrativo", 1960.00);
    
select * from tb_funcionaries where salario > 2000;

select * from tb_funcionaries where salario < 2000;

update tb_funcionaries set idade = 25 where id = 5;

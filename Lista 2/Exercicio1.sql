create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
	id bigint(5) auto_increment,
	categoria varchar(30) not null,
    descricao varchar(50),
    vantagem varchar(30),
    
    primary key (id)
);

insert tb_classe(categoria, descricao, vantagem) 
	values ("Tech", "Personagem Tech", "Contra Migth Heroes");
insert tb_classe(categoria, descricao, vantagem) 
	values ("Migth", "Personagem Migth", "Contra Agility Heroes");
insert tb_classe(categoria, descricao, vantagem) 
	values ("Agility", "Personagem Agility", "Contra Metahuman Heroes");
insert tb_classe(categoria, descricao, vantagem) 
	values ("Metahuman", "Personagem Metahuman", "Contra Tech Heroes");
insert tb_classe(categoria, descricao, vantagem) 
	values ("Arcane", "Personagem Arcano", "Sem vantagens");

select * from tb_classe;

CREATE TABLE tb_personagem (
    id BIGINT(5) AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    ataque BIGINT NOT NULL,
    vida BIGINT NOT NULL,
    classe VARCHAR(40) NOT NULL,
    classe_id BIGINT(5) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id)
        REFERENCES tb_classe (id)
);

insert into tb_personagem(nome, ataque, vida, classe, classe_id) 
	values ("Predator Batman", 1465, 6124, "Tech", 1);
insert into tb_personagem(nome, ataque, vida, classe, classe_id) 
	values ("Black Adam", 1393, 9415, "Arcane", 5);
insert into tb_personagem(nome, ataque, vida, classe, classe_id) 
	values ("Wonder Woman", 960, 3817, "Might", 2);
insert tb_personagem(nome, ataque, vida, classe, classe_id) 
	values ("The Flash", 1000, 3899, "Metahuman", 4);
insert into tb_personagem(nome, ataque, vida, classe, classe_id) 
	values ("Robin", 3200, 17000, "Agility", 3);
    
select * from tb_personagem;

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where vida > 2000 and vida < 5000;

select * from tb_personagem where nome like "%Bl%";

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.categoria = "Tech";

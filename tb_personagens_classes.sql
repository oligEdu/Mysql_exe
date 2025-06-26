create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
	id int not null auto_increment,
    nome_classe varchar(255),
    primary key (id)
    );


create table tb_personagem(
	id bigint not null auto_increment,
    nome varchar(255),
	poder_ataque int,
    poder_defesa int,
    classe_id int,
    primary key (id)
);

alter table tb_personagem
add constraint classe_id
foreign key (classe_id) references tb_classe(id);

insert into tb_classe (nome_classe) values
('Mago'),
('Arqueiro'),
('Guerreiro'),
('Clérigo'),
('Assassino');

insert into tb_personagem (nome, poder_ataque, poder_defesa, classe_id) values
('Cadimus', 1900, 3000, 3),
('Frieren', 2900, 1200, 1),
('Fern', 2750, 1100, 1),
('Heiter', 2600, 1000, 4),
('Légolas', 2850, 1300, 2),
('Himmel', 1900, 2900, 3),
('Stark', 2100, 2500, 3),
('Ezio', 1800, 2600, 5);

select * from tb_personagem where poder_ataque > 2000;
select * from tb_personagem where poder_defesa between 1000 and 2000;
select * from tb_personagem where nome like '%c%';
select * from tb_personagem p INNER JOIN tb_classe c ON p.classe_id = c.id; 
select * from tb_personagem p INNER JOIN tb_classe c ON p.classe_id = c.id where nome_classe = 'Mago'; 


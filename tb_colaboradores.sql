create database db_humanresources;

use db_humanresources;

create table tb_colaboradores (
	id BIGINT auto_increment not null,
	nome VARCHAR(255),
    cpf varchar(11),
    data_de_nascimento date,
    salario decimal(7,2),
	cargo varchar (255),
	PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores (nome, cpf, data_de_nascimento, salario, cargo)
VALUES ('Ana Silva', '12345678901', '1990-05-12', 1500.00, 'Analista de RH');

INSERT INTO tb_colaboradores (nome, cpf, data_de_nascimento, salario, cargo)
VALUES ('Bruno Souza', '23456789012', '1985-08-23', 4200.00, 'Desenvolvedor');

INSERT INTO tb_colaboradores (nome, cpf, data_de_nascimento, salario, cargo)
VALUES ('Carla Mendes', '34567890123', '1992-03-30', 900.00, 'Assistente Administrativo');

INSERT INTO tb_colaboradores (nome, cpf, data_de_nascimento, salario, cargo)
VALUES ('Diego Rocha', '45678901234', '1988-11-15', 5000.00, 'Gerente de Projetos');

INSERT INTO tb_colaboradores (nome, cpf, data_de_nascimento, salario, cargo)
VALUES ('Eduarda Lima', '56789012345', '1995-07-07', 2100.00, 'Analista Financeiro');

select * from tb_colaboradores where salario > 2000;
select * from tb_colaboradores where salario < 2000;

update tb_colaboradores set salario = 1800 where id = 3;

delete from tb_colaboradores where id = 1;

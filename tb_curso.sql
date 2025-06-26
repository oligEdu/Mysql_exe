
'Crie um banco de dados para uma plataforma de Cursos Online (EAD). 
O nome do Banco de dados deverá ter o seguinte nome db_curso_da_minha_vida. 
O sistema trabalhará com as informações dos produtos comercializados pela empresa. 
O sistema trabalhará com 2 tabelas tb_cursos e tb_categorias, que deverão estar relacionadas.'
create database db_curso_da_minha_vida;

use db_curso_da_minha_vida;

create table tb_categorias(
	id int not null auto_increment,
    nome varchar (255),
    descricao varchar(255),
    primary key(id)
); 

create table tb_cursos(
	id int not null auto_increment,
    curso varchar(200),
    descricao varchar(200),
    nivel varchar(20),
    preco decimal(6,2),
    categoria_id int,
    primary key(id),
    foreign key (categoria_id) references tb_categorias(id) 
); 

INSERT INTO tb_categorias (nome, descricao) VALUES
('Tecnologia', 'Cursos relacionados a TI e desenvolvimento'),
('Saúde', 'Cursos da área da saúde e bem-estar'),
('Negócios', 'Cursos sobre gestão, marketing e empreendedorismo'),
('Idiomas', 'Cursos de línguas estrangeiras'),
('Design', 'Cursos sobre artes visuais, design e criatividade');

INSERT INTO tb_cursos (curso, descricao, nivel, preco, categoria_id) VALUES
('Programação Python', 'Curso básico de Python para iniciantes', 'Iniciante', 120.00, 1),
('Redes de Computadores', 'Conceitos fundamentais sobre redes', 'Intermediário', 590.00, 1),
('Primeiros Socorros', 'Treinamento prático para emergências', 'Básico', 550.00, 2),
('Gestão Financeira', 'Como organizar finanças pessoais e empresariais', 'Avançado', 1200.00, 3),
('Inglês Conversação', 'Curso para melhorar a fluência oral em inglês', 'Intermediário', 610.00, 4),
('Design Gráfico', 'Fundamentos do design e uso de softwares', 'Iniciante', 450.00, 5),
('Marketing Digital', 'Estratégias para divulgação online', 'Intermediário', 900.00, 3),
('Espanhol para Viagens', 'Curso rápido para comunicação básica em espanhol', 'Básico', 250.00, 4),
('APIs com Java', 'Curso de construção de APIs com Java', 'Intermediário', 800.00, 1);

SELECT * FROM tb_cursos WHERE preco > '500.00';
SELECT * FROM tb_cursos WHERE preco BETWEEN '600.00' AND '1000.00';

SELECT * FROM tb_cursos WHERE curso LIKE '%J%';

SELECT * FROM tb_cursos c1 INNER JOIN tb_categorias c2 ON c1.categoria_id = c2.id;
SELECT * FROM tb_cursos c1 INNER JOIN tb_categorias c2 ON c1.categoria_id = c2.id WHERE categoria_id = 1;
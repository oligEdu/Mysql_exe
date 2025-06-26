create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias(
		id bigint not null auto_increment,
        nome_categoria varchar(255),
        descricao varchar(255),
        primary key(id)
);

create table tb_produtos(
		id bigint not null auto_increment,
        nome_produto varchar (255),
        preco decimal(5,2),
        qtd_estoque int,
        fabricante varchar(255),
        categoria_id bigint,
        primary key(id),
        foreign key (categoria_id) references tb_categorias(id) 
);

insert into tb_categorias (nome_categoria, descricao) values
('Analgésicos', 'Medicamentos para alívio da dor'),
('Antibióticos', 'Medicamentos para tratamento de infecções bacterianas'),
('Vitaminas', 'Suplementos vitamínicos e minerais'),
('Antigripais', 'Medicamentos para sintomas de gripe e resfriado'),
('Dermatológicos', 'Produtos para cuidados com a pele');

insert into tb_produtos (nome_produto, preco, qtd_estoque, fabricante, categoria_id) values
('Paracetamol 500mg', 12.50, 100, 'Farmaco Ltda', 1),
('Ibuprofeno 400mg', 15.00, 80, 'Saude Pharma', 1),
('Amoxicilina 500mg', 30.00, 50, 'BioMed', 2),
('Cefalexina 250mg', 28.00, 40, 'Pharma Plus', 2),
('Vitamina C 1000mg', 20.00, 200, 'VitaLife', 3),
('Multivitamínico Adulto', 45.00, 150, 'HealthCorp', 3),
('Xarope Antigripal', 18.00, 70, 'Bem Estar', 4),
('Creme Dermatológico', 120.00, 60, 'DermaCare', 5);

SELECT * FROM tb_produtos WHERE preco > '50.00';
SELECT * FROM tb_produtos WHERE preco BETWEEN '50.00' AND '150.00';

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT * FROM tb_produtos p INNER JOIN tb_categorias c ON p.categoria_id = c.id;
SELECT * FROM tb_produtos p INNER JOIN tb_categorias c ON p.categoria_id = c.id WHERE categoria_id = 2;


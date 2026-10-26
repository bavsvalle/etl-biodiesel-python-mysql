create database biocombustiveis;
use biocombustiveis;

create table anos (
	id int primary key auto_increment,
    ano int    
);

create table meses (
	id int primary key auto_increment,
    mes int
);

create table regioes (
	id int primary key auto_increment,
    regiao varchar(200)
);

create table estados (
	id int primary key auto_increment,
    estado varchar(100)
);

create table produtos (
	id int primary key auto_increment,
    produto varchar(200)
);

create table biocombustiveis (
	id int primary key auto_increment,
    quantidade_m3 int,
    mes_id int,
    ano_id int,
    regiao_id int,
    estado_id int,
    produto_id int,
    
	foreign key (mes_id) references meses(id),
    foreign key (ano_id) references anos(id),
    foreign key (regiao_id) references regioes(id),
    foreign key (estado_id) references estados(id),
    foreign key (produto_id) references produtos(id)   
);

select * from biocombustiveis;


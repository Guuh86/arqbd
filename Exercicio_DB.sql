create database marmoraria;

use marmoraria;

create table produto(
id int not null,
nome varchar(45),
primary key(id));

create table equipe(
id int not null,
nome varchar(45),
primary key(id));

create table vendedor(
id int not null,
id_equipe int not null,
nome varchar(45),
primary key(id),
foreign key(id_equipe) references equipe(id));

create table venda(
id int not null,
id_vendedor int not null,
id_produto int not null,
primary key(id),
foreign key(id_vendedor) references vendedor(id),
foreign key(id_produto) references produto(id));
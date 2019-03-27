create database lanche;

use lanche;

create table produto(
idProduto int,
nomeProduto varchar(45),
primary key(idProduto));

create table pedido(
idPedido int,
dataPedido DATE,
primary key(idPedido));

create table itensPedido(
pedido_idPedido int,
produto_idProduto int,
qtdProduto double,
valorProduto double,
primary key(pedido_idPedido, produto_idProduto),
foreign key(pedido_idPedido) references pedido(idPedido),
foreign key(produto_idProduto) references produto(idProduto));
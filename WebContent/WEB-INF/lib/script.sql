CREATE DATABASE USUARIO;

USE USUARIO;

CREATE TABLE usuarios(
idcon int primary key auto_increment,
nome varchar(50) not null,
email varchar(50) not null,
senha varchar(50) not null,
endereco varchar(100) not null,
cidade varchar(50) not null,
UF varchar (10) not null,
CEP varchar (50) not null
);



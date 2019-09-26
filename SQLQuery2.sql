use master
Go

drop database Empresa;
GO

create database Empresa;
GO


use Empresa;
CREATE TABLE Funcionarios(
	codf integer,
	nome1 varchar(15) not null,
	nome2 varchar(15) not null,
	nome3 varchar(15),
	data_nasc numeric not null,
	cpf numeric(15) unique not null,
	rg numeric(15) unique not null,
	cidade varchar(25) not null,
	fone numeric(15) not null,
	fundacao varchar(40) not null,
	salario numeric(10) not null,
	cep numeric (9) not null,
	endereco varchar (25) not null,
	codd integer,
	primary key (codf),
	foreign key (codd) references Departamento
)
CREATE TABLE Departamento(
	codd integer,
	nome varchar(15) not null,
	localizacao varchar (20) not null,
	codf integer,
	primary key (codd),
	foreign key (codf) references Funcionarios
)
Insert into Funcionarios
(nome1, nome2, nome3)
values ('Pedro','Matheus','Silva');


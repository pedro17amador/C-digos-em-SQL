use master 
Go

drop database AMA;
Go

drop database AMA;
Go

use AMA;

CREATE TABLE Ambulatorios (
	nroa integer,
	andar numeric(3) not null,
	capacidade smallint,    
	primary key (nroa) 
)
CREATE TABLE Medicos (
	codm integer not null identity (1,1),
	nome varchar(40) not null,
	idade smallint not null,
	especialidade char(20),
	cpf	numeric(11) unique,
	cidade	varchar(30) default'Saõ Paulo',
	nroa integer ,
	primary key (codm),
	foreign key (nroa) references Ambulatorios
)
CREATE TABLE Pacientes(
	codp integer,
	nome varchar(40) not null,
	idade smallint not null,
	cpf numeric(11) unique,
	doenca varchar(40) not null,
	primary key (codp),
	foreign key (codm) references Medicos
)
CREATE TABLE Funcionarios(
	codf integer,
	nroa integer,
	nome varchar(40) not null,
	idade smallint not null,
	cpf numeric(11) unique,
	cidade varchar(11),
	salario numeric(10),
	cargo varchar(40),
	primary key (codf),
	foreign key (nroa) references Ambulatorios,
)
CREATE TABLE Consultas(
	codc integer,
	cdm	integer,
	comp integer,
	data date,
	hora time,
	primary key	 (codc),
	foreign key	(codc) references Medicos
)  
 
CREATE UNIQUE INDEX cpf ON Medicos (cpf);
 
CREATE UNIQUE INDEX doenca ON Pacientes (doenca);

DROP INDEX doenca ON Pacientes;



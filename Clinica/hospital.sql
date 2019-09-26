use master
Go

drop database AMA;
GO

create database AMA;
GO


use AMA;

create table Ambulatorios(
nroa		integer NOT NULL identity(1,1),
andar		numeric(3) not null,
capacidade smallint,
primary key (nroa)
)
CREATE TABLE Medicos (
		codm		      integer,
		nome		      varchar(40) NOT NULL,
		idade            smallint    NOT NULL,
   especialidade    char(20), 
   CPF              numeric(11) UNIQUE, 
   cidade           varchar(30)DEFAULT 'Sao Paulo',  
   sexo varchar (1) not null check(sexo In ('M','F')),
   nroa             integer,
   PRIMARY KEY(codm),
   FOREIGN KEY(nroa) REFERENCES Ambulatorios 	
)
INSERT INTO Ambulatorios VALUES ( 1, 30),(2,20);


    INSERT INTO Medicos 
    (codm, nome, idade, especialidade, CPF, cidade, sexo, nroa)
    VALUES ( 1,'Carlos', 28,'ortopedia', 11000110000, 'Joinville','M',1),
           ( 2,'edu', 35,'otorrino', 11000110011, default,'M',2);

select * 
from Ambulatorios;
select *
from Medicos;

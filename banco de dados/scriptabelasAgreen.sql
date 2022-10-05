create database agreen;
use agreen;

create table empresa (
idEmpresa int primary key auto_increment,
nome varchar (45),
CNPJ char (14),
email varchar (45),
telFixo char (10),
fkrepresentante int,
constraint foreign key (fkrepresentante) 
references representante (idRep), 
fkendereco int,
constraint foreign key (fkendereco)
references enderecoEmpresa (idEndereco)
);

--comentario

create table enderecoEmpresa (
idEndereco int primary key auto_increment,
cep char (8),
rua varchar (45),
bairro varchar (45),
num int);


create table representante (
idRep int primary key auto_increment,
nome varchar (45),
cpf char (11),
telCel char (11)
);

create table leitura (
idLeitura int primary key auto_increment,
temperatura varchar (45),
umidade varchar (45),
dataehorario datetime,
fkEmpresa int,
constraint foreign key (fkEmpresa)
references Empresa (idEmpresa)
);

create table sensor (
idSensor int primary key auto_increment,
atividade varchar (45),
fkleitura int,
constraint fkleitura foreign key (fkleitura)
references leitura (idLeitura)
);






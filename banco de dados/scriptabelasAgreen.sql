create database agreen;
use agreen;

create table usuario (
idUsuario INT primary key auto_increment,
email varchar (45),
CNPJ char (14),
senha varchar (20)
); 

create table empresa (
CNPJ INT primary key,
nome varchar (45),
tipo varchar(20), constraint chkTipo 
check (tipo in ('Filial','Matriz')),
fkusuario int,
constraint foreign key (fkusuario) 
references usuario (idUsuario) 
);

--comentario

create table enderecoEmpresa (
idEndereco int primary key auto_increment,
cep char (8),
rua varchar (45),
bairro varchar (45),
num int,
Descricao varchar (100)
fkempresacnpj INT,
constraint foreign key (fkempresacnpj)
references empresa (CNPJ)
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
references leitura (idLeitura),
fkSensorEmpresa int,
constraint fkSensorEmpresa foreign key (fkSensorEmpresa)
references empresa (CNPJ)
);






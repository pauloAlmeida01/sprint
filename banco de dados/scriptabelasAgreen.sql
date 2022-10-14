create database agreen;
use agreen;

create table usuario (
idUsuario INT primary key auto_increment,
email varchar (45),
CNPJ char (14),
senha varchar (20),
fkempresa int,constraint foreign key (fkempresa) references usuario (idUsuario)
); 

create table empresa (
idEmpresa INT PRIMARY KEY,
nome Varchar(45),
tipo varchar(45),
email varchar(45),
telFixo char(11)
);

create table enderecoEmpresa (
idEndereco int primary key auto_increment,
cep char (8),
rua varchar (45),
bairro varchar (45),
num int,
fkempresa int,constraint foreign key (fkempresa) references Endereco (idEndereco)
);
 
create table leitura (
idLeitura int primary key auto_increment,
temperatura varchar (45),
umidade varchar (45),
data_horario datetime,
fksensor int,
constraint foreign key (fksensor)
references sensor (idsensor)
);

create table sensor (
idSensor int primary key auto_increment,
atividade varchar (45),
nome varchar(45),
fkSensorEmpresa int,
constraint fkSensorEmpresa foreign key (fkSensorEmpresa)
references empresa (idEmpresa)
);








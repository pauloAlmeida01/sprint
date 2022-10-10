create database agreen;
use agreen;

create table usuario (
idUsuario INT primary key auto_increment,
email varchar (45),
CNPJ char (14),
senha varchar (20)
); 

create table empresa (
idEmpresa INT PRIMARY KEY,
fkusuario int,
constraint foreign key (fkusuario) 
references usuario (idUsuario),
nome Varchar(45),
CNPJ char (14),
nome varchar (45),
CEP CHAR(9),
Num INT,
logradouro varchar (45),
complemento varchar (45),
cidade varchar (45)
);
 


-- comentario


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
fkSensorEmpresa int,
constraint fkSensorEmpresa foreign key (fkSensorEmpresa)
references empresa (idEmpresa)
);






create database agreen;
use agreen;

create table usuario (
idUsuario INT primary key auto_increment,
email varchar (45),
CNPJ char (14),
senha varchar (20),
fkempresa int,
constraint fkempresa foreign key (fkempresa) 
references empresa (idEmpresa)
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
fkempresa int,constraint foreign key (fkempresa) 
references Endereco (idEndereco)
);
 
 
create table sensor (
idSensor int primary key auto_increment,
atividade varchar (45),
nome varchar(45),
fkSensorEmpresa int,
constraint fkSensorEmpresa foreign key (fkSensorEmpresa)
references empresa (idEmpresa)
);

create table leitura (
idLeitura int primary key auto_increment,
temperatura DECIMAL (3.1),
umidade DECIMAL (3.1),
data_horario datetime,
fksensor int,
constraint fksensor foreign key (fksensor)
references sensor (idsensor)
);

INSERT INTO empresa VALUES
(1,'CarreAssai','Matriz','carreassai.oficial@email.com','1122446688'),
(2,'ExtroMagazino','Matriz','extromagazino.oficial@email.com','1133557799');

INSERT INTO usuario VALUES 
(1,'lucasmilagres@sptech.school','12345876000161','Empresa123@',1),
(2,'alanaquino@sptech.school','12345678000161','CarreAssai123',1),
(3,'paulo.rodrigues@sptech.school','12343421000161','ExtroMagazino123@',2);

INSERT INTO enderecoempresa VALUES 
(1,'01414002','Rua Haddok Lobo','Cerqueira César',594,1),
(2,'03909150','Rua Estado do Amazonas','São Mateus',503,2);

INSERT INTO sensor VALUES 
(1,'','Sensor Gondula 1',1),
(2,'','Sensor Gondula 2',1),
(3,'','Sensor Frezzer 1',1),
(4,'','Sensor Frezzer 2',1),
(5,'','Sensor Gondula 1',2),
(6,'','Sensor Gondula 2',2),
(7,'','Sensor Frezzer 1',2),
(8,'','Sensor Frezzer 2',2);

INSERT INTO leitura VALUES
(1,'22.5','75','1999-01-01 11:40:00',1),
(2,'23.5','80','1999-01-01 11:40:00',2),
(3,'1.5','85','1999-01-0 11:40:00',3),
(4,'1.5','81','1999-01-0 11:40:00',4);





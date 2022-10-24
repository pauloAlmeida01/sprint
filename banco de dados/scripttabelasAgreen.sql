create database agreen;
use agreen;

create table empresa (
idEmpresa INT PRIMARY KEY auto_increment,
razaoSocial varchar(80),
nome varchar (45),
CNPJ char (14),
telFixo char(11)
);

create table usuario (
idUsuario INT primary key auto_increment,
nome varchar (45),
email varchar (45),
senha varchar (20),
fkempresa int,
constraint fkempresa foreign key (fkempresa) 
references empresa (idEmpresa)
); 

create table enderecoEmpresa (
idEndereco int,
fkempresa int,
constraint foreign key (fkempresa) 
references empresa (idEmpresa),
cep char (8),
rua varchar (45),
bairro varchar (45),
num int,
complemento varchar (45),
primary key (idEndereco, fkempresa)
);
 
create table sensor (
idSensor int,
fkEmpresa int,
foreign key (fkEmpresa)
references empresa (idEmpresa),
atividade varchar (45),
nome varchar(45),
primary key (idSensor, fkEmpresa)
);

create table leitura (
idLeitura int primary key auto_increment,
temperatura DECIMAL (3,1),
umidade DECIMAL (3,1),
data_horario datetime,
fksensor int,
foreign key (fksensor)
references sensor (idSensor),
fkEmpresa int,
foreign key (fkEmpresa)
references sensor (fkEmpresa)
);

INSERT INTO empresa VALUES
(null, 'Barcelona Comércio Varejista e Atacadista S/A', 'Assai', 55343752000147, 1122446688),
(null, 'Carrefour Comercio e Industria Ltda', 'Carrefour', 31573781000137, 11212343245),
(null, 'Cnova Comercio Eletrônico S/A', 'Extra', 78213489000177, 11679216032);

INSERT INTO usuario VALUES 
(null, 'Lucas', 'lucas.milagres@sptech.school','Empresa123@', 1),
(null, 'Alan', 'alan.silva@sptech.school','alan3838', 2),
(null, 'Leonardo', 'leonardo.borges@sptech.school','leleo34532', 2),
(null, 'Luan', 'luan.souza@sptech.school','souza321', 3),
(null, 'Gabriel', 'gabriel.ssilva@sptech.school','fernando90', 3),
(null, 'Paulo', 'paulo.santos@sptech.school','paulo231', 1);

INSERT INTO enderecoempresa VALUES 
(1, 2, 89076523, 'Rua Cerqueira César', 'Vila Matilde', 595, null),
(2, 1, 12383741, 'Rua Pamplona', 'São Mateus', 123, 'C'),
(3, 3, 45682312, 'Av. dos Milagres', 'Santana', 8978, null);

INSERT INTO sensor VALUES 
(1, 1, 'ativo', 'Sensor Gondula 1'),
(2, 1, 'ativo', 'Sensor Gondula 2'),
(3, 1, 'ativo', 'Sensor Freezer 1'),
(4, 1, 'ativo', 'Sensor Freezer 2'),
(1, 2, 'ativo', 'Sensor Gondula 1'),
(2, 2, 'ativo', 'Sensor Gondula 2'),
(3, 2, 'ativo', 'Sensor Freezer 1'),
(4, 2, 'ativo', 'Sensor Freezer 2'),
(1, 3, 'ativo', 'Sensor Gondula 1'),
(2, 3, 'ativo', 'Sensor Gondula 2'),
(3, 3, 'ativo', 'Sensor Freezer 1'),
(4, 3, 'ativo', 'Sensor Freezer 2');

INSERT INTO leitura VALUES
(1,'22.5','75','1999-01-01 11:40:00',1, 2),
(2,'23.5','80','1999-01-01 11:41:00',1, 1),
(3,'1.5','85','1999-01-0 11:42:00', 1, 3),
(4,'4.9','81','1999-01-0 11:41:00', 2, 1),
(5,'13.7','81','1999-01-0 11:43:00', 2, 2),
(6,'20.5','81','1999-01-0 11:39:00', 2, 3),
(7,'10.1','81','1999-01-0 11:42:00', 3, 1),
(8,'30.2','81','1999-01-0 11:43:00', 3, 2),
(9,'22.4','81','1999-01-0 11:44:00', 3, 3);

	-- Dados Sensores
    
	SELECT e.nome as NomeEmpresa,
			s.nome as LocalSensor,
             l.temperatura as Temperatura,
             l.umidade as Umidade,
             l.data_horario as Dia_hora
             FROM empresa as e
             JOIN sensor as s
             ON idEmpresa = fkEmpresa 
             JOIN leitura as l
             ON idSensor = fkSensor;
             
             
	 SELECT e.nome as NomeEmpresa,
			s.nome as LocalSensor,
             l.temperatura as Temperatura,
             l.umidade as Umidade,
             l.data_horario as Dia_hora
             FROM empresa as e
             JOIN sensor as s
             ON idEmpresa = fkEmpresa 
             JOIN leitura as l
             ON idSensor = fkSensor
             where idEmpresa = 1;
             
	SELECT e.nome as NomeEmpresa,
			s.nome as LocalSensor,
             l.temperatura as Temperatura,
             l.umidade as Umidade,
             l.data_horario as Dia_hora
             FROM empresa as e
             JOIN sensor as s
             ON idEmpresa = fkEmpresa 
             JOIN leitura as l
             ON idSensor = fkSensor
             where idEmpresa = 2;
            
	SELECT e.nome as NomeEmpresa,
			s.nome as LocalSensor,
             l.temperatura as Temperatura,
             l.umidade as Umidade,
             l.data_horario as Dia_hora
             FROM empresa as e
             JOIN sensor as s
             ON idEmpresa = fkEmpresa 
             JOIN leitura as l
             ON idSensor = fkSensor
             where idEmpresa = 3;
    
    -- Endereço
    
	SELECT e.nome as NomeEmpresa,
			c.cep as CEP,
			c.rua as Rua,
            c.bairro as Bairro,
            c.complemento as Complemento
            FROM empresa as e 
            JOIN enderecoEmpresa as c
            ON idempresa = fkempresa;

	-- Usuario + empresa

	SELECT e.nome as NomeEmpresa,
			u.nome as NomeUsuario,
            u.email as Email,
            u.senha as senha
            FROM empresa as e
            JOIN usuario as u
            ON idempresa = fkempresa;
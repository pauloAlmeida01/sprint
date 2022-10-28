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
temperatura DECIMAL (5,2),
umidade DECIMAL (5,2),
data_horario datetime,
fksensor int,
foreign key (fksensor)
references sensor (idSensor),
fkEmpresa int,
foreign key (fkEmpresa)
references sensor (fkEmpresa)
);

create table contato (
idContato int primary key auto_increment,
nome varchar (45),
email varchar (45),
telFixo char (11),
mensagem varchar (200)
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
(1, 1, 'ativo', 'Sensor Gondola 1'),
(2, 1, 'ativo', 'Sensor Gondola 2'),
(3, 1, 'ativo', 'Sensor Freezer 1'),
(4, 1, 'ativo', 'Sensor Freezer 2'),
(1, 2, 'ativo', 'Sensor Gondola 1'),
(2, 2, 'ativo', 'Sensor Gondola 2'),
(3, 2, 'ativo', 'Sensor Freezer 1'),
(4, 2, 'ativo', 'Sensor Freezer 2'),
(1, 3, 'ativo', 'Sensor Gondola 1'),
(2, 3, 'ativo', 'Sensor Gondola 2'),
(3, 3, 'ativo', 'Sensor Freezer 1'),
(4, 3, 'ativo', 'Sensor Freezer 2');

INSERT INTO leitura VALUES
(1,'22.5','75','2022-01-01 01:00:00',1, 2),
(2,'23.5','80','2022-01-01 02:00:00',1, 1),
(3,'1.5','85','2022-01-01 03:00:00', 1, 3),
(4,'4.9','81','2022-01-01 04:00:00', 2, 1),
(5,'13.7','81','2022-01-01 05:00:00', 2, 2),
(6,'20.5','81','2022-01-01 06:00:00', 2, 3),
(7,'10.1','81','2022-01-01 07:00:00', 3, 1),
(8,'30.2','81','2022-01-01 08:00:00', 3, 2),
(9,'22.4','81','2022-01-01 09:00:00', 3, 3);

insert into contato values 
(null, 'Carrefour', 'negocios@carrefour.com.br', 11212343245, 'Gostaríamos de agendar uma visita técnica para realizar orçamento.');



	-- Dados Sensores empresa especifica
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
         
-- empresa e local especifico         
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
             where idEmpresa = 1
             and s.nome LIKE '%Gondola%';
             
-- empresa, local e data/horario especificos
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
             where idEmpresa = 3
             and s.nome LIKE '%Gondola%'
             and l.data_horario = '1999-01-01 06:00:00';
             
-- atividade dos sensores
	SELECT e.nome as NomeEmpresa,
		s.nome as LocasSensor,
        s.atividade FROM empresa as e
        JOIN sensor as s
        ON IdEmpresa = fkEmpresa;
        
-- confirmacao primeiro contato
	select c.nome as PrimeiroContato,
	e.nome as ContratoFeito from contato as c
		 join empresa as e 
<<<<<<< HEAD
			where e.nome = 'Carrefour';
            
drop table leitura;
=======
			where c.nome = 'Carrefour';
>>>>>>> 32caf33e8366854d3b27f86f1456e6c5d87dd5da
        
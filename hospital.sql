CREATE DATABASE cadastro;
use cadastro;

CREATE TABLE paciente
(	
id int unsigned not null auto_increment,
nome varchar (45) not null,
telefone CHAR(9)  not null,
planod CHAR(4) not null,
primary key (id)
)ENGINE = innodb;

CREATE TABLE medico
(	
id int unsigned not null auto_increment,
nome varchar (45) not null,
especialidade varchar (45) not null,
crm CHAR (4) not null,
primary key (id)
)ENGINE = innodb;

CREATE TABLE triagem
(	
id int unsigned not null auto_increment,

primary key (id),
paciente_id int unsigned default null,
medico_id int unsigned default null,
medico_id timestamp not null default current_timestamp,
CONSTRAINT fk_paciente FOREIGN KEY (paciente_id) REFERENCES paciente (id),
CONSTRAINT fk_medico FOREIGN KEY (medico_id) REFERENCES medico (id)
)ENGINE = innodb;

INSERT INTO paciente (nome, telefone, planod) VALUES ('Bugatti Chiron', 994903000, 1234);
INSERT INTO paciente (nome, telefone, planod) VALUES ('Bug Chiron', 994901000, 4321);
INSERT INTO paciente (nome, telefone, planod) VALUES ('Bugatti ', 994902000, 9876);
INSERT INTO medico (nome, especialidade, crm) VALUES ('Darlei ', 'Oftalmologia', 3276);
INSERT INTO medico (nome, especialidade, crm) VALUES ('Darlete ', 'Dermatologia', 1183);
INSERT INTO medico (nome, especialidade, crm) VALUES ('Darliene ', 'Infectologia', 5203);
INSERT INTO triagem (paciente_id, medico_id) VALUES (1, 2);
INSERT INTO triagem (paciente_id, medico_id) VALUES (3, 1);
INSERT INTO triagem (paciente_id, medico_id) VALUES (2, 3);
describe medico 
create database hospital;
use hospital;
CREATE TABLE paciente (
    cpf DECIMAL(11),
    rg NUMERIC(8),
    nome VARCHAR(80),
    rua VARCHAR(50),
    bairro VARCHAR(30),
    cidade VARCHAR(45),
    cep CHAR(10),
    datanasc DATE
);
/*alter + add*/
alter table paciente add genero char(1);

/*alter + change*/
alter table paciente change rua endereco varchar(50);

/*alter + modify*/
alter table paciente modify nome varchar(100);

/*alter + alter*/
alter table paciente alter cidade set default 'Juiz de Fora';

/*alter + drop*/
alter table paciente drop bairro;

desc paciente;

/*Colocando not null no atributo nome*/
alter table paciente modify nome varchar(1000) not null;

/*Colocando default no atributo cidade*/
alter table paciente change cidade cidade varchar(45)
default 'Rio de Janeiro';

/*Colocando a chave primária da tabela paciente*/
alter table paciente add constraint pk_paciente
primary key(cpf);

/*Adicionando a coluna uf na tabela paciente*/
alter table paciente add column uf char(2);

/*Cadastrando a chave alternativa ou candidata*/
alter table paciente add constraint ck_cid_uf
unique(cidade, uf);

/*Cadastrando rg como chave alternativa*/
alter table paciente modify rg decimal(8) unique;

/*Criando a tabela doença*/
create table doenca(
cid char(5) primary key,
descricao varchar(100)
);

/*Criando tabela medico*/

create table medico(
crm decimal(6) primary key,
cpf decimal(11),
nome varchar(100),
rua varchar(50),
bairro varchar(25),
cidade varchar(45),
cep char(10)
);

/*Criando a tabela especialidade*/
 create table especialidade(
 rqe varchar(10),
 especialidade varchar(45)
 );
 alter table especialidade add primary key(rqe);
 
 /*Criando a tabela hospital*/
 create table hospital(
 cnpj decimal(13) primary key,
 nome varchar(100),
 rua varchar(50),
 bairro varchar(25),
 cidade varchar(45),
 cep char(10),
 telefone varchar(15)
 );
 
 /*Criando a tablea medico_especialidade*/
 create table medico_especialidade(
 crm decimal(6), 
 rqe varchar(10),
 primary key(crm, rqe),
 foreign key(crm) references medico(crm)
 on delete cascade on update cascade,
 foreign key(rqe) references especialidade(rqe)
 );
 
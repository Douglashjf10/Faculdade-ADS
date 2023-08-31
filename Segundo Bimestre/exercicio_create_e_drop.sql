create database empresa;
use empresa;
CREATE TABLE empregado (
    codigo_empregado DECIMAL(6),
    nome VARCHAR(50),
    codigo_cargo DECIMAL(5),
    endereco VARCHAR(50),
    bairro VARCHAR(20),
    cidade VARCHAR(20),
    codigo_chefe DECIMAL(6),
    uf CHAR(2),
    data_nasc DATE,
    sexo CHAR(1),
    filiacao VARCHAR(60),
    salario DECIMAL(10 , 2 )
);

CREATE TABLE cargo (
    codigo_cargo DECIMAL(3),
    decricao_cargo VARCHAR(30),
    salario_min NUMERIC(7 , 2 ),
    salario_max NUMERIC(8 , 2 ),
    nivel_graduacao CHAR(1)
);

CREATE TABLE dependente (
    codigo_empregado DECIMAL(6),
    nome_dependente VARCHAR(50),
    sexo CHAR(1),
    data_nasc DATE,
    parentesco VARCHAR(15)
);

CREATE TABLE departamento (
    codigo_dep DECIMAL(3),
    nome_dep VARCHAR(30),
    codigo_gerente DECIMAL(6),
    data_inicio_gerente DATE,
    data_criacao DATE
);
alter table empregado add cpf decimal(11);
alter table empregado modify nome varchar(15);
alter table empregado add sobrenome varchar(15);
alter table empregado modify nome varchar(15);
alter table empregado modify cpf varchar(11);
alter table empregado modify codigo_cargo decimal(3);
alter table empregado drop filiacao;
alter table empregado add codigo_dep decimal(3);
alter table empregado modify codigo_cargo decimal(3) not null;
alter table empregado modify cpf char(11);

/*Alterando a tabela Cargo*/

alter table cargo drop decricao_cargo;
alter table cargo add nome_cargo varchar(40);

/*Alterando a tabela Departamento*/

alter table departamento add local varchar(20);

/*Alterando a tabela Dependente*/

alter table dependente modify codigo_empregado decimal(6) not null;


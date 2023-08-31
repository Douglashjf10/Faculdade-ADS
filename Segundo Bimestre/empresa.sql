/*1) Crie o banco de dados empresa. Utilize o comando CREATE DATABASE.*/
create database empresa;

/*Selecionando a base de dados que eu irei utilizar*/
use empresa;

/*2)Crie as seguintes tabelas:*/
/*a) Empregado*/
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
/*b)Cargo*/
CREATE TABLE cargo (
    codigo_cargo DECIMAL(3),
    descricao_cargo VARCHAR(30),
    salario_min DECIMAL(7 , 2 ),
    salario_max DECIMAL(8 , 2 ),
    nivel_graduacao CHAR(1)
);

/*c) Dependente*/
CREATE TABLE dependente (
    codigo_empregado DECIMAL(6),
    nome_dependente VARCHAR(50),
    sexo CHAR(1),
    data_nasc DATE,
    parentesco VARCHAR(15)
);
/*d) Departamento*/
CREATE TABLE departamento (
    codigo_dep DECIMAL(3),
    nome_dep VARCHAR(30),
    codigo_gerente DECIMAL(6),
    data_inicio_gerente DATE,
    data_criacao DATE
);

/*Empregado*/
/*Inclua o atributo CPF do tipo caractere com 11 dígitos;*/
alter table empregado add column cpf char(11);

/*Altere o tamanho do atributo NOME fazendo com que seja do tipo 
caractere com 15 caracteres;*/
alter table empregado modify nome varchar(15);

/*Inclua um atributo SOBRENOME do tipo caractere com 15 caracteres.*/
alter table empregado add sobrenome varchar(15);

/*Altere o tamanho do atributo CODIGO_CARGO fazendo com que seja 
do tipo decimal com 3 dígitos decimais;*/
alter table empregado modify codigo_cargo decimal(3);

/*Elimine o atributo FILIACAO.*/
alter table empregado drop filiacao;

/*Inclua o atributo CODIGO_DEP do tipo decimal com 3 dígitos
decimais;*/
alter table empregado add codigo_dep decimal(3);

/*Altere o atributo CODIGO_CARGO para ser um atributo não nulo;*/
alter table empregado modify codigo_cargo decimal(3) not null;
desc empregado;
/*CARGO*/
/*Elimine o atributo DESCRICAO_CARGO;*/
/*Inclua o atributo NOME_CARGO do tipo caractere que pode receber 
de 0 a 40 caracteres.*/
alter table cargo
				 drop descricao_cargo,
                 add nome_cargo varchar(40);
                 
/*DEPARTAMENTO*/
/*Inclua o atributo LOCAL_DEP do tipo caractere com 20 caracteres que 
pode receber de 0 a 20 caracteres.*/
alter table departamento add local_dep varchar(20);

/*DEPENDENTE*/
/*Altere o atributo CODIGO_EMPREGADO para ser um atributo não nulo.*/
alter table dependente modify codigo_empregado decimal(6) not null;
desc dependente;

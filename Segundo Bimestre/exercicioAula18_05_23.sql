create database empresa;
use empresa;
create table empregado(
	codigo_empregado decimal(6),
	nome varchar(50),
	codigo_cargo decimal(5),
	endereco varchar(50),
	bairro varchar(50),
	cidade varchar(20),
	codigo_chefe decimal(6),
	uf char(2),
	data_nasc date,
	sexo char(1),
	filiacao varchar(60),
	salario decimal(10,2)
);

create table cargo(
	codigo_cargo decimal(6),
	descricao_cargo varchar(30),
	salario_min decimal(7,2),
	salario_max decimal(8,2),
	nivel_graduacao char(1)
);
create table dependente(
	codigo_empregado decimal(6),
	nome_dependente varchar(50),
	sexo char(1),
	data_nasc date,
	parentesco decimal(15)
);
create table departamento(
	codigo_dep decimal(3),
	nome_dep varchar(30),
	codigo_gerente decimal(6),
	data_inicio_gerente date,
	data_criacao date
);
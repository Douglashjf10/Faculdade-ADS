-- Criando a base de dados faculdade
create database faculdade;
/*Criando a base de dados empresa*/
create database empresa;
-- Eliminando as bases de dados empresa e faculdade
drop database empresa;
drop database faculdade;
-- Criando novamente
create database faculdade;
create database empresa;
-- Selecionando a base de dados que irei utilizar
use faculdade;
-- Criando a tabela aluno
CREATE TABLE aluno (
    matricula DECIMAL(4) PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    curso CHAR(3)
);
-- Verificando as tabelas e suas colunas
desc aluno;
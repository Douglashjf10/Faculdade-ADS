create database faculdade;
use faculdade;
create table curso(
	codigo decimal(5),
    nome varchar(60)
);
create table aluno(
	matricula decimal(4),
    nome varchar(50),
    cpf decimal(11),
    datanasc date,
    endereco varchar(80),
    codCurso decimal(5)
);

alter table aluno modify nome varchar(50) not null,
				  modify datanasc date not null,
                  modify endereco varchar(80) not null;

/*Adicionei o atributo cidade*/
alter table aluno add cidade varchar(30);
alter table aluno modify cidade varchar(30) default 'Juiz de Fora';

/*Criando a chave primária da tabela aluno*/
alter table aluno add constraint pk_aluno primary key(matricula);

/*Criando a chave primária da tabela curso sem criar o nome dela*/
alter table curso add primary key(codigo);

/*utilizando cpf como chave alternativa sem criar um nome.
Observe que o SGBD deu nome cpf para a chave candidata*/
alter table aluno add unique(cpf);

/*Eliminando a chave candidata de nome cpf*/
alter table aluno drop index cpf;

/*Criando a chave candidata com nome ck_cpf*/
alter table aluno add constraint ck_cpf unique(cpf);

/*Adicionando a coluna salário da tabela aluno*/
alter table aluno add salario decimal(7,2);

/*Adicionando a restrição que impõe valores maiores que 0 para a coluna salário*/
alter table aluno add check(salario>0);

desc aluno;

insert into aluno values(1234,'Fulano',98765432109,'2000-05-12','Rua A',222,'Juiz de Fora',0);

/*Eliminando a restrição do salário maior que 0*/
alter table aluno drop check aluno_chk_1;

/*Criando a restrição do salário ser maior ou igual a 0 dando um nome para a cláusula check*/
alter table aluno add constraint verifica_salario check(salario>=0);

insert into aluno values(1234,'Fulano',98765432109,'2000-05-12','Rua A',222,'Juiz de Fora',0);

/*Adicionando o curso 222 de ADS*/
insert into curso values(222,'Análise e desenvolvimento de sistemas');

/*Adicionando a chave estrangeira da tabela aluno*/
alter table aluno add foreign key(codCurso)references curso(codigo);

/*Eliminando a chave estrangeira para criá-la com cascata*/
alter table aluno drop foreign key aluno_ibfk_1;

/*Adicionando a chave estrangeira da tabela aluno, com delete cascade e update cascade*/
alter table aluno add foreign key(codCurso)references curso(codigo) on delete cascade on update cascade;





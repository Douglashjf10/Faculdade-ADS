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
desc aluno;

alter table aluno modify nome varchar(50) not null,
				  modify datanasc date not null,
                  modify endereco varchar(80) not null;

desc aluno;
/* Tentando inserir um novo aluno sem nome. O SGBD não permitirá.*/
insert into aluno values(1234,null, 98765432101,'200-05-13','Rua A',1);

/*Adicionei o atributo cidade*/
alter table aluno add cidade varchar(30);
alter table aluno modify cidade varchar(30) default 'Juiz de Fora';
desc aluno;

/*Inserindo um novo aluno sem colocar a cidade. Como cidade possui um valor padrão, o aluno terá no campo cidade o valor definido como padrão*/
insert into aluno(matricula, nome, cpf, datanasc, endereco, codcurso) values(123,'Fulano',98765432101,'2000-05-13','Rua A', 1);

/*Criando a chave primária da tabela aluno*/
alter table aluno add constraint pk_aluno primary key(matricula);
desc aluno;

/*Criando a chave primária da tablea curso sem criar o nome dela*/
alter table curso add primary key(codigo);

desc curso;

/*Tentando inserir um novo aluno com a mesma matrícula de algum aluno já adicionado na tabela. O SGBD não irá permitir*/
insert into aluno(matricula, nome, cpf, datanasc, codcurso) values(1234,'Beltrano',87654321022,'2013-06-24','Rua X',2);

/*Tentando inserir um novo aluno com o valor nulo para a coluna matrícula. O SGBD não irá permitir*/
/*Tentando inserir um novo aluno com a mesma matrícula de algum aluno já adicionado na tabela. O SGBD não irá permitir*/
insert into aluno(matricula, nome, cpf, datanasc, codcurso) values(null,'Beltrano',87654321022,'2013-06-24','Rua X',2);
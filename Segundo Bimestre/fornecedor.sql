create database fornecedor;
use fornecedor;
CREATE TABLE fornecedor (
    num_fornecedor NUMERIC(4) PRIMARY KEY,
    fnome VARCHAR(30),
    status_forn VARCHAR(15),
    cidade VARCHAR(20),
    CHECK (status_forn = 'disponível'
        OR status_forn = 'indisponível')
);
CREATE TABLE peca (
    num_peca NUMERIC(5) PRIMARY KEY,
    pnome VARCHAR(30),
    cor VARCHAR(10),
    peso FLOAT,
    cidade VARCHAR(20),
    preco FLOAT
);
CREATE TABLE pedido (
    num_fornecedor NUMERIC(4),
    num_peca NUMERIC(5),
    qdade INT,
    CONSTRAINT pk_pedido PRIMARY KEY (num_fornecedor , num_peca),
    CONSTRAINT fk_forn_ped FOREIGN KEY (num_fornecedor)
        REFERENCES fornecedor (num_fornecedor),
    CONSTRAINT fk_peca_ped FOREIGN KEY (num_peca)
        REFERENCES peca (num_peca)
);
/*Inserindo 1 fornecedor com todas as colunas. Logo, não é necessário especificar a dordem das colunas*/
insert into fornecedor values (1,'Agnaldo', 'disponível','São Paulo');

/*Inserindo 1 fornecedor com apenas 3 colunas. Logo, não é necessário especificar a dordem das colunas*/
insert into fornecedor(num_fornecedor, fnome, status_forn) values
(2, 'Ronaldo','indisponível');

/*Inserindo 3 fornecedores em um único comando insert*/
insert into fornecedor values
(3,'Jair','indisponível','Rio de Janeiro'),
(4,'Lindolfo','disponível','Belo Horizonte'),
(5,'Mauro','disponível','Juiz de fora');

insert into peca values
(1,'Porca','Vermelho',0.8,'São Paulo',1.75),
(2,'Pino','Verde',0.5,'Rio de Janeiro',1.3),
(3,'Parafuso','Azul',0.4,'Rio de Janeiro',1),
(4,'Parafuso','Cinza',0.3,'Juiz de Fora',0.9),
(5,'Tubo','Branco',1,'Juiz de Fora',2.25),
(6,'Tubo','Preto',1,'Belo Horizonte',3.5);

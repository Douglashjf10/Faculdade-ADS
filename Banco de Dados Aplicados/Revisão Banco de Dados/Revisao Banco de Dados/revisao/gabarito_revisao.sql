/*QUESTÃO 01: Traga todas as informações dos 
produtos que não foram vendidos. 
Utilize junção externa.*/
select p.*
from produto p left join produto_vendido pv
on p.id_produto = pv.id_produto
where pv.id_produto is null;

/*QUESTÃO 02:Traga todas as informações dos clientes
 que não efetuaram nenhuma compra. 
 Utilize junção externa.*/
 select c.*
 from venda v right join cliente c
 on v.id_cliente = c.id_cliente
 where nr_venda is null;
 
/*QUESTÃO 03: Traga as informações do produto 
que possui maior quantidade em estoque.*/
select *
from produto
where estoque=(select max(estoque) from produto);

/*QUESTÃO 04: Traga todas as informações, 
juntamente com preço do produto que possui o 
menor valor.*/
select *
from produto
where preco_unitario = 
(select min(preco_unitario) from produto);

/*QUESTÃO 05: Recupere o número da venda e a 
quantidade de produtos que foram vendidos por
 venda. Traga apenas as vendas que tiveram mais 
 de 5 produtos vendidos. 
 Ordene da maior para menor quantidade de 
 produtos vendidos.*/
 select v.nr_venda, sum(quantidade) as soma_venda
 from produto_vendido pv inner join venda v
 on pv.nr_venda = v.nr_venda
 group by v.nr_venda
 having soma_venda>5
 order by soma_venda desc;
 
 /*QUESTÃO 06: Traga o número da venda juntamente com a quantidade vendida.*/
select v.nr_venda, sum(quantidade)
from venda v inner join produto_vendido pv on v.nr_venda = pv.nr_venda
group by v.nr_venda;

 /*QUESTÃO 07: Recupere as informações dos clientes e a quantidade de compras que eles efetuaram. 
Caso o cliente não tenha efetuado nenhuma compra, o valor 0 deverá ser mostrado na frente das informações do cliente.*/
select c.*, count(v.id_cliente)
from cliente c left join venda v on c.id_cliente = v.id_cliente
group by c.id_cliente;
create table produtos (
    id serial PRIMARY KEY,
    nome varchar(200) NOT NULL

);

create table clientes (
    id serial PRIMARY KEY,
    nome varchar(200) NOT NULL

);

create table vendas (
    id serial PRIMARY KEY,
    id_produto integer NOT NULL,
    id_cliente integer NOT NULL

);

ALTER TABLE vendas
ADD CONSTRAINT VdaProd
FOREIGN KEY (id_produto) REFERENCES produtos(id);

ALTER TABLE vendas
ADD CONTRAINT VdaCli
FOREIGN KEY (id_cliente) REFERENCES clientes(id);

insert into produtos (nome) values ('carro'),('computador'),('alface'),('pet');
insert into clientes (nome) values ('Hug'),('Zez'),('Luiz'),('TioPatinhas');

insert into vendas (id_produto,id_cliente) values
(1,1),(2,2),(2,3),(4,1),(4,2),(4,3),(4,4);

select * from vendas;

select cli.nome as clientes, prod.nome as produto from vendas as vds
join produtos as prod on prod.id = vda.id_produto;
join clientes as cli on cli.id = vda.id_cliente;

select vda.id as venda,prod.nome as produto from vendas as vda
right join produtos as prod on prod.id = vda.id_produto;

select vda.id as venda,prod.nome as produto from vendas as vda
left join produtos as prod on prod.id = vda.id_produto;
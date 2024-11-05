-- EX1 --
select v.nome_vendedor, count(p.codigo_vendedor) as quantidade_pedidos
from vendedores v
left join pedidos p on v.codigo_vendedor = p.codigo_vendedor
group by v.nome_vendedor
having count(p.codigo_vendedor) = 0;

-- EX2 --
select m.nome_marinheiro
from marinheiros m
left join reservas r on m.codigo_marinheiro = r.codigo_marinheiro
where r.codigo_marinheiro is null;


-- EX3 --
select b.nome_barco
from barcos b
right join reservas r on b.codigo_barco = r.codigo_barco
where r.codigo_barco is null;


-- EX4 --	
create table departamento (
    id_departamento integer,
    nome_departamento varchar(255) not null,
    constraint pk_dep primary key (id_departamento)
);

create table empregado (
    id_empregado integer,
    nome_empregado varchar(255),
    id_departamento integer,
    constraint pk_emp primary key (id_empregado),
    constraint fk_emp_dep foreign key (id_departamento) references departamento
);


-- EX5 --
insert into departamento (id_departamento, nome_departamento) values (1, 'rh');
insert into departamento (id_departamento, nome_departamento) values (2, 'vendas');
insert into departamento (id_departamento, nome_departamento) values (3, 'ti');

insert into empregado (id_empregado, nome_empregado, id_departamento) values (1, 'joao', 1);
insert into empregado (id_empregado, nome_empregado, id_departamento) values (2, 'maria', 2);
insert into empregado (id_empregado, nome_empregado, id_departamento) values (3, 'carlos', null);


-- EX6 --
select d.nome_departamento
from departamento d
left join empregado e on d.id_departamento = e.id_departamento
where e.id_departamento is null;


-- EX7 --
select d.nome_departamento, e.nome_empregado
from departamento d
right join empregado e on d.id_departamento = e.id_departamento
where e.id_departamento is null;


-- EX8 --
select d.nome_departamento, e.nome_empregado
from departamento d
full outer join empregado e on d.id_departamento = e.id_departamento
where d.id_departamento is null or e.id_departamento is null;



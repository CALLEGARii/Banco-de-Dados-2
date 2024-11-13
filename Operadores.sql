----------------------------------------------------
-- EX1 --
select c.nome from corretor c
inner join aluguel a ON a.crecicorretor = c.creci
union
select i.nome from inquilino i
inner join aluguel a ON a.cpfinquilino = i.cpf
order by nome;

-- EX2 --
select c.nome from corretor c
inner join aluguel a ON a.crecicorretor = c.creci
intersect
select i.nome from inquilino i
inner join aluguel a ON a.cpfinquilino = i.cpf
order by nome;
 
-- EX3 --
select nomealu from aluno
intersect
select nomepro from professor
intersect
select nomefunc from funcionario;

-- EX4 --
select nomealu from aluno
except
select nomefunc from funcionario;

-- EX5 --
select nomefunc from funcionario
except
select nomealu from aluno;

-- EX6 --
select nomefunc from funcionario
intersect
select nomealu from aluno
intersect
select nomepro from professor;
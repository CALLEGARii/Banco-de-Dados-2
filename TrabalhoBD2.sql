-- script.imobiliaria.sql --
-- EX1 --
select i.nome, c.nome, im.tipoimovel, a.datainilocacao from aluguel a
	inner join inquilino i on a.cpfinquilino = i.cpf
	inner join corretor c on a.crecicorretor = c.creci
	inner join imovel im on a.idimovel = im.idimovel
	order by a.datainilocacao asc;

-- EX2 --
select i.nome from inquilino i
	inner join aluguel a on i.cpf = a.cpfinquilino
	where a.datainilocacao = (select max(datainilocacao) from aluguel);
	
-- EX3 --
select distinct i.nome from inquilino i
	inner join aluguel a_inquilino on i.cpf = a_inquilino.cpfinquilino
	inner join corretor c on i.nome = c.nome
	inner join aluguel a_corretor on c.creci = a_corretor.crecicorretor;
	
-- EX4 --

-- e) Apenas as sentenças I e III estão corretas.
-------------------------------------------------------------------------------------------------

-- script.Locadora.sql --
-- EX5 --
select c.nome,t.telefone from cliente c
	left join telefonecliente t on c.codcliente = t.codcliente
	where t.telefone is null;
	
-- EX6 --
select f.nome as genero_filme, count(distinct a.codfilme) from clientealugaexemplarfilme a
	inner join filme f on a.codfilme = f.codfilme
	group by f.nome;
	
-- EX7 --
select a.nome from ator a
	where a.idator in (select ae.idator from atorestrelafilme ae
					   inner join filme f on ae.codfilme = f.codfilme
					   where f.genero in ('Ação', 'Drama'));

-- EX8 --
-- alternativa correta é (e).
select e.nome_estado
from estado e
where e.UF not in (select f.UF from fornecedor f);


-- EX9 --
-- resposta correta a) 3 linhas.
select vt.idvoo, vt.cidorigem, vt.ciddestino 
from voo_tam vt 
where 
    (vt.cidorigem in ('manaus', 'salvador', 'são paulo') 
    or vt.ciddestino = 'rio de janeiro') 
    and exists (
        select * 
        from voo_gol vg 
        where vg.ciddestino = 'fortaleza'
    );


-- EX10--
-- reposta correta b). Serializable

-----------------------------------------------------------------------------------------------







	


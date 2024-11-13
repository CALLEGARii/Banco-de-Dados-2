-- EX1 --
select nome_marin from marinheiros
where id_marin in (select id_marin from reservas);

-- EX2 --
select nome_barco from barcos
where id_barco in (select id_barco from reservas);

-- EX3 --
select nome_marin from marinheiros
where id_marin in (select id_marin from reservas where id_barco in 
				  (select id_barco from barcos where cor = 'Marrom'));
				  
-- EX4 --
select nome_marin from marinheiros
where id_marin in (select id_marin from reservas where id_barco in 
				  (select id_barco from barcos where cor = 'Marrom' or cor = 'Azul'));
				  
-- EX5 --
select nome_marin from marinheiros
where id_marin in (select id_marin from reservas where id_barco in 
				  (select id_barco from barcos where cor = 'Marrom'))
				  and id_marin in (select id_marin from reservas 
				  where id_barco in (select id_barco from barcos
									where cor = 'Azul'));
									
-- EX6 --
select marinheiros.nome_marin, reservas.data_res from marinheiros
inner join reservas ON reservas.id_marin = marinheiros.id_marin
where data_res in (select max(data_res) from reservas
				  where id_marin = id_marin);
		
-- EX7 --
select marinheiros.nome_marin, reservas.data_res from marinheiros
inner join reservas ON reservas.id_marin = marinheiros.id_marin
where data_res in (select min(data_res) from reservas
				  where id_marin = id_marin);
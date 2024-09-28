CREATE TABLE REMEDIO (
	codRemedio integer NOT NULL,
	nomeRemedio varchar(40) NOT NULL, 
	descricao varchar(100) NOT NULL, 
	laboratorio varchar(40) NOT NULL, 
	preco numeric NOT NULL,
	constraint pk_remedio PRIMARY KEY (codRemedio));

-- inserção de dados
INSERT INTO REMEDIO VALUES (1, 'AAS', 'Ad. 2 x 10 cprs. 500 mg', 'SANOFI-AVENTIS', 11.53);
INSERT INTO REMEDIO VALUES (2, 'BACTERACIN', 'Cx. 12 cprs.', 'TEUTO BRAS.', 9.31);
INSERT INTO REMEDIO VALUES (3, 'CALADRYL', 'Creme bisn. 28 g.', 'JOHNSON & JOHNSON', 12.28);
INSERT INTO REMEDIO VALUES (4, 'DEPROZOL', '1000 mg. 2 cprs. rev', 'ACHE', 24.69);
INSERT INTO REMEDIO VALUES (5, 'ENGOV', 'Fracao - 1 env. x 6 cprs', 'COSMED', 4.00);
INSERT INTO REMEDIO VALUES (6, 'FAMOX', '20 mg. cprs. cx. 10', 'ACHE', 15.74);
INSERT INTO REMEDIO VALUES (7, 'FASTURTEC', '1,5 mg. po liof. 3 FA vd', 'SANOFI-AVENTIS', 1300.66);
INSERT INTO REMEDIO VALUES (8, 'GALVUS', '50 mg. 14 cp', 'NOVARTIS', 46.37);
INSERT INTO REMEDIO VALUES (9, 'LACTO-PURGA', 'Fracao - 1 bl. x 6 cprs. rev', 'COSMED', 2.62);
INSERT INTO REMEDIO VALUES (10, 'MAGNOPYROL', 'Xpe. fr. 100 ml', 'FARMASA', 17.22);
INSERT INTO REMEDIO VALUES (11, 'RESPRIN', 'Fracao 4 cprs', 'JOHNSON & JOHNSON', 4.17);
INSERT INTO REMEDIO VALUES (12, 'RIVOTRIL', 'Cx. 20 cprs. 0,5 mg', 'ROCHE', 5.97);
INSERT INTO REMEDIO VALUES (13, 'SEDILAX', 'Bl. 4 cprs. laranja', 'TEUTO BRAS.', 3.25);
INSERT INTO REMEDIO VALUES (14, 'ZADITEN', 'Sol. oral 30 ml', 'NOVARTIS', 65.27);



-- EX1 --
select * from remedio

-- EX2 -- 
select nomeRemedio, preco from remedio

-- EX3 --
select nomeRemedio, preco, laboratorio from remedio
where preco > 10;

-- EX4 --
select * from remedio
where laboratorio in ('ACHE', 'FARMASA', 'NOVARTIS');

-- EX5 --
select nomeRemedio, laboratorio, preco from remedio
 order by preco asc;
 
 -- EX6 --
 select nomeRemedio as "Nome do Remédio", descricao, preco as "preço" from remedio
 order by preco desc;
 
 -- EX7 --
 select nomeRemedio, preco from remedio
 where preco between 5 and 15;
 
 --EX8 --
 update remedio set preco = 1.05;
 
 -- EX9 --
 delete from remedio 
 where preco > 20 or laboratorio = 'FARMASA';
 
-------------------------------------------------------------------------------------------------------------

CREATE TABLE PAIS
(
	nome VARCHAR (50), 
	capital VARCHAR (50) NOT NULL, 
	populacao real, idh real, 
	continente varchar (30), 
	CONSTRAINT PK_PAIS PRIMARY KEY (nome)
);

INSERT INTO PAIS VALUES ('Afeganistão','Cabul',29.1,0.349,'Ásia'),('Angola', 'Luanda', 18.4, 0.403, 'África'),('Áustria', 'Viena', 8.2, 0.895, 'Europa');
INSERT INTO PAIS VALUES ('Bolívia','La Paz',10.9,0.675,'América do Sul'),('Camarões', 'Iaundê', 19.1, 0.482, 'África'),('Alemanha', 'Berlim', 81.76, 0.920, 'Europa');
INSERT INTO PAIS VALUES ('Argentina','Buenos Aires',40.0,0.811,'América do Sul'),('Austrália', 'Camberra', 22.6, 0.938, 'Oceania'),('Brasil', 'Brasília', 190.732, 0.730, 'América do Sul');
INSERT INTO PAIS VALUES ('Canadá','Ottawa',34.48,0.911,'América do Norte'),('Chile', 'Santiago do Chile', 17.09, 0.819, 'América do Sul'),('Coréia do Sul', 'Seul', 48.3, 0.909, 'Ásia');
INSERT INTO PAIS VALUES ('Costa do Marfim','Abidjan',20.1,0.397,'África'),('Cuba', 'Havana', 11.07, 0.780, 'América Central'),('Equador', 'Quito', 14.3, 0.724, 'América do Sul');
INSERT INTO PAIS VALUES ('Espanha','Madri',47.19,0.885,'Europa'),('Estados Unidos da América', 'Washington DC', 308.745, 0.937, 'América do Norte'),('França', 'Paris', 65.3, 0.893, 'Europa');
INSERT INTO PAIS VALUES ('Guatemala','Cidade da Guatemala',14,0.560,'América Central'),('Islândia', 'Reykjavik', 0.318, 0.906, 'Europa'),('Rússia', 'Moscou', 142.9, 0.788, 'Europa e Ásia');
INSERT INTO PAIS VALUES ('Argélia','Argel',40.400,0.748,'África'),('África do Sul', 'Pretória', 57.39, 0.709, 'África'),('Arábia Saudita', 'Riade', 33.55, 0.854, 'Ásia');
INSERT INTO PAIS VALUES ('Bélgica','Bruxelas',11.500,0.931,'Europa'),('Bulgária', 'Sófia', 7.03, 0.816, 'Europa'),('Burquina Faso', 'Uagadugu', 19.7, 0.305, 'África');
INSERT INTO PAIS VALUES ('Cabo Verde','Praia',0.553,0.665,'África'),('Colômbia', 'Bogotá', 49.464, 0.767, 'América do Sul'),('Croácia', 'Zagreb', 4.16, 0.767, 'Europa');
INSERT INTO PAIS VALUES ('Dinamarca','Copenhaga',5.75,0.866,'Europa'),('Egito', 'Cairo', 99.375, 0.707, 'África'),('Filipinas', 'Manila', 106.512, 0.718, 'Ásia');
INSERT INTO PAIS VALUES ('China','Pequim',1412,0.788,'Ásia'),('Dominica', 'Roseau', 0.071, 0.717, 'América Central'),('Escócia', 'Edimburgo ', 5.424, 0.901, 'Europa');
INSERT INTO PAIS VALUES ('Irlanda do Norte','Belfast',1.885,0.899,'Europa'),('Finlândia', 'Helsinque', 5.556, 0.871, 'Europa'),('Gana', 'Acra', 33.48, 0.467, 'Ásia');
INSERT INTO PAIS VALUES ('Holanda','Amsterdã',17.7,0.944,'Europa'),('Honduras', 'Tegucigalpa', 10.43, 0.632, 'Ámérica Central'),('Marrocos', 'Rabat', 37.46, 0.683, 'África');

-- EX10 --
select nome, capital from pais
where nome like '_i&' or nome like'%l%';

-- EX11 --
select nome from pais
where nome like '&a%a';

-- EX 12 -- 
select nome from PAIS
where nome like '%r%' or populacao < 10 or continente = 'Ásia'
order by nome asc;

-- EX 13 --
select nome from PAIS
where nome like '%i%' and idh > 0.7 and populacao > 20;

-- EX 14 --
select nome from PAIS
where SUBSTR(nome, length(nome) - 1, 1) = 'i' or idh between 0.4 and 0.7
order by idh asc;

-- EX 15 --
select nome, continente, populacao from PAIS
where nome like '%s%' and continente = 'África' and populacao between 10 and 30
order by nome asc;
---------------------------------------------------------------------------------
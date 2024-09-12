-- CREATE TABLE --

create table CURSO(
	idCurso integer,
	nomeCurso character varying(30),
	nroSemestres integer,
	dtaFundacao date,
	constraint pk_curso primary key (idCurso)
);

create table ALUNO(
	prontuario character varying(30),
	nome character varying(30),
	dtaNasc date,
	sexo char(1),
	idCurso integer,
	constraint pk_aluno primary key (prontuario),
	constraint fk_aluno_curso foreign key (idCurso) references curso
);

-- INSERT -- 

insert into curso values
	(1,'Ciencia da Computaçao',8,'1986/03/01'),
	(2,'Direito',8,'1975/12/14'),
	(3,'Medicina',12,'2000/07/05'),
	(4,'Engenharia Elétrica',10,'1996/12/10'),
	(5,'Biologia',8,'1993/06/06'),
	(6,'Matemática',8,'1968/07/01');


insert into aluno values
    ('11aa','Paulo','1986/07/01','M',1),
	('11bb','Ana','1990/07/08','F',5),
	('11cc','Júlio','1980/05/08','M',3),
	('11dd','Carlos','1983/11/10','M',2),
	('11ee','Gabriele','1990/05/08','F',3),
	('11ff','Antônio','1955/06/15','M',4),
	('11gg','Ana','1975/12/08','F',5),
	('11hh','Mara','1970/07/07','F',1),
	('11ii','Roberto','1956/07/01', 'M',3),
	('11jj','Carmem','1950/02/03','F',2),
	('11kk','Pedro Roberto','1950/02/03','F',2);

insert into aluno values
('11kk','Pedro Roberto','11/01/2000',3);

--DELETE--

delete from curso
 where idCurso = 2;
 
 delete from aluno
 where idCurso = 2;

-- UPDATE -- 

update curso set idCurso = 10
where idCurso = 3; 

---

update aluno set nome = 'Ana Paula'
where prontuario = '11gg';

-- exercicios Cidade Brasil --

-- 1 --
UPDATE cidade 
SET populacao = 900000
WHERE nomeCidade = 'Campo Grande';

-- 2 --
UPDATE cidade 
SET idh = 0.81
WHERE nomeCidade = 'Palmas';

-- 3 --
UPDATE cidade 
SET idhm = 0.77, escolarizacao = 0.96
WHERE nomeCidade = 'Salvador';

-- 4 -- 
DELETE FROM cidade 
WHERE idhm < 0.6;

-- 5 --
DELETE FROM cidade 
WHERE populacao < 20000;

-- 6 --
DELETE FROM cidade 
WHERE idhm < 0.7 
AND regiao = 'Sudeste';

----- 

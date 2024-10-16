--EX1 --
create table livro
(
	isbn integer,
	titulo character varying(60),
	nroPgs integer,
	ano integer,
	edicao integer,
	constraint pk_livro primary key(isbn));
	
create table aluno
(
	prontuario character varying(10),
	nome character varying(50),
	dtaNasc date,
	rua character varying(30),
	nro integer,
	bairro character varying(30),
	cidade character varying(50),
	cep character varying(15),
	constraint pk_aluno primary key(prontuario));
	
create table telefone
(
	nroTelefone integer,
	prontuario character varying(10),
	constraint pk_telefone primary key(nroTelefone,prontuario),
	constraint fk_prontuario_aluno foreign key(prontuario) references aluno);
	
create table reservaslivro
(
	isbn integer,
	prontuario character varying(10),
	dtaRes date,
	dtaRev date,
	constraint pk_reservaslivro primary key(isbn,prontuario,dtaRes),
	constraint fk_isbn_livro foreign key(isbn) references livro on delete cascade on update cascade,
	constraint fk_prontuario_aluno foreign key(prontuario) references aluno on delete cascade on update cascade
);

--EX2 --
INSERT INTO livro (isbn, titulo, nroPgs, ano, edicao) VALUES
(978013468, 'Effective Java', 416, 2018, 3),
(978032112, 'Design Patterns', 395, 1994, 1),
(978013235, 'Clean Code', 464, 2008, 1),
(978020163, 'Refactoring', 448, 2018, 2),
(978013476, 'Java Concurrency in Practice', 368, 2006, 1);

INSERT INTO aluno (prontuario, nome, dtaNasc, rua, nro, bairro, cidade, cep) VALUES
('2023001', 'João Silva', '2001-05-15', 'Rua A', 123, 'Centro', 'São Paulo', '01000-000'),
('2023002', 'Maria Oliveira', '2002-06-20', 'Rua B', 456, 'Jardim', 'Rio de Janeiro', '20000-000'),
('2023003', 'Carlos Santos', '2003-07-25', 'Rua C', 789, 'Vila', 'Belo Horizonte', '30000-000'),
('2023004', 'Ana Pereira', '2000-08-30', 'Rua D', 101, 'Lagoa', 'Curitiba', '40000-000'),
('2023005', 'Fernanda Lima', '1999-09-05', 'Rua E', 202, 'Praia', 'Salvador', '50000-000');

INSERT INTO telefone VALUES
(119876543, '2023001'),
(219765432, '2023002'),
(319654321, '2023003'),
(419543210, '2023004'),
(519432109, '2023005');

INSERT INTO reservaslivro (isbn, prontuario, dtaRes, dtaRev) VALUES
(978013468, '2023001', '2023-10-01', '2023-10-15'),
(978032112, '2023002', '2023-10-02', '2023-10-16'),
(978013235, '2023003', '2023-10-03', '2023-10-17'),
(978020163, '2023004', '2023-10-04', '2023-10-18'),
(978013476, '2023005', '2023-10-05', '2023-10-19');

-- ex10 --
select nomeCidade from cidadesbrasil
where nomeCidade like 'a%' or 
nomeCidade like '%r%' or 
nomeCidade like '%i_';

--EX11 --
select ator.nome, filme.nome from ator
join atorestrelafilme on atorestrelafilme.idator = ator.idator
join filme on filme.codfilme = atorestrelafilme.codfilme;

--EX12 --
select ator.nome, count(filme.nome) as "Quantidade_filme" from ator
join atorestrelafilme on atorestrelafilme.idator = ator.idator
join filme on filme.codfilme = atorestrelafilme.codfilme
group by ator.nome;

-- EX13 --
select cliente.nome as "Clientes", telefone as "Telefones" from cliente
join telefonecliente ON telefonecliente.codcliente = cliente.codcliente;

--EX14 --
select cliente.nome as "Clientes", filme.nome as "Filmes Alugados" from cliente
join clientealugaexemplarfilme ON clientealugaexemplarfilme.codcliente = cliente.codcliente
join filme on clientealugaexemplarfilme.codFilme = filme.codFilme;

-- EX15 --
select cliente.nome, filme.nome, ator.nome from cliente
join clientealugaexemplarfilme ON clientealugaexemplarfilme.codcliente = cliente.codcliente
join clientealugaexemplarfilme on clientealugaexemplarfilme.codFilme = filme.CodFilme

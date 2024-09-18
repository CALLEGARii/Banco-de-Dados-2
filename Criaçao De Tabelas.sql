create table ATOR
(
	idAtor integer,
	nome character varying(40),
	dtaNasc date,
	constraint pk_ator primary key (idAtor)
);

create table FILME
(
	codFilme integer,
	nome character varying(40),
	genero character varying(20),
	dtaLanc date,
	constraint pk_filme primary key (codFilme)
);

create table atorEstrelaFilme
(
	idAtor integer,
	codFilme integer,
	constraint pk_estrela primary key (idAtor, codFilme),
	constraint fk_filme_ator foreign key (idAtor) references ator,
	constraint fk_ator_filme foreign key (codFilme) references filme
);

create table EXEMPLAR
(
	nroExemplar integer,
	codFilme integer,
	constraint pk_Exemplar primary key (nroExemplar, codFilme),
	constraint fk_filme foreign key (codFilme) references filme
);

create table CLIENTE 
(
	codCliente integer,
	nome character varying(40),
	rua character varying(40),
	nro integer,
	cidade character varying(20),
	cep character varying(20),
	constraint pk_cliente primary key (codCliente)
);

create table TelefoneCliente
(
	nroTelefone integer,
	codCliente integer,
	constraint pk_teleCliente primary key (codCliente, nroTelefone),
	constraint fk_Cliente foreign key (codCliente) references cliente
);

create table ClienteAlugaExemplar
(
	dtaEmpr date,
	dtaDev date,
	codCliente integer,
	codFilme integer,
	nroExemplar integer,
	constraint pk_Aluga primary key (dtaEmpr, codCliente, codFilme, nroExemplar),
	constraint fk_Cliente foreign key (codCliente) references cliente,
	constraint fk_codFilme foreign key (codFilme) references filme,
	constraint fk_nroExemplar foreign key (nroExemplar, codFilme) references exemplar (nroExemplar, codFilme)
);

-- Exercicio 2 -- 

create table PROPRIETARIO
(
	cod_proprietario integer,
	nome character varying(40),
	constraint pk_proprietario primary key (cod_proprietario)
);

create table VEICULO
(
	placa character varying(20),
	modelo character varying(20),
	ano_fabricacao date,
	constraint pk_veiculo primary key (placa)
);

create table POSSUI
(
	cod_proprietario integer,
	placa character varying(20),
	constraint pk_possui primary key (cod_proprietario, placa),
	constraint fk_Possui_proprietario foreign key (cod_proprietario) references proprietario,
	constraint fk_Possui_placa foreign key (placa) references veiculo
);

create table FISICO
(
	cod_proprietario integer,
	cpf character varying (20),
	constraint pk_fisico primary key (cod_proprietario, cpf),
	constraint fk_Fisico_proprietario foreign key (cod_proprietario) references proprietario
);

create table JURIDICO
(
	cod_proprietario integer,
	cnpj character varying (30),
	constraint pk_juridico primary key (cod_proprietario, cnpj),
	constraint fk_Fisico_proprietario foreign key (cod_proprietario) references proprietario
);

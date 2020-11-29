--cargos
CREATE TABLE IF NOT EXISTS cargo(

	idcargo serial primary key,
	cargo varchar(20)
);

insert into cargo(idcargo, cargo) values(1,'Presidente');
insert into cargo(idcargo, cargo) values(3,'Governador');
insert into cargo(idcargo, cargo) values(5,'Senador');
insert into cargo(idcargo, cargo) values(11,'Prefeito');
insert into cargo(idcargo, cargo) values(6,'Deputado Federal');
insert into cargo(idcargo, cargo) values(7,'Deputado Estadual');
insert into cargo(idcargo, cargo) values(8,'Deputado Distrital');
insert into cargo(idcargo, cargo) values(9,'Vereador');

create table if not exists candidato_cargo(

    id_candidato_cargo serial primary key,
    id_candidato bigint,    -- id do candidato
    id_cargo int, -- id do cargo
    sigla varchar(10),
    codSuperior int,
    titular boolean,
    contagem int

);

create table if not exists emails(

	idemail serial primary key,
	email varchar(80),
	id_candidato_email bigint-- vinculo tabela principal
);

create table if not exists sites(

	idsite serial primary key,
	site varchar(150),
	id_candidato_site bigint -- vinculo tabela principal
);
--1,n
create table if not exists vice(

	idvice serial primary key,
	id_candidato_vice bigint,-- vinculo tabela principal
	composicaoColigacao varchar(100),
	ds_CARGO varchar(70),
	dt_ULTIMA_ATUALIZACAO date,
	nm_CANDIDATO VARCHAR(100),
	nm_PARTIDO varchar(50),
	nm_URNA varchar(50),
	nomeColigacao varchar(100),
	nr_CANDIDATO integer,
	sg_PARTIDO varchar(20),
	sg_UE integer,
	situacaoCandidato varchar(50),
	sq_CANDIDATO bigint,
	sq_CANDIDATO_SUPERIOR bigint,
	sq_ELEICAO bigint,
	stRegistro varchar,
	urlFoto varchar
);
-- 1,1
create table if not exists partido(

	idpartido serial primary key,
	legenda integer,
	partido varchar(50),
	sigla varchar(40)
);

INSERT INtO PARTIDO(sigla,partido,legenda) values('MDB','MOVIMENTO DEMOCRÁTICO BRASILEIRO',15);
INSERT INtO PARTIDO(sigla,partido,legenda) values('PTB'	,'PARTIDO TRABALHISTA BRASILEIRO',14);
INSERT INtO PARTIDO(sigla,partido,legenda) values('PDT','PARTIDO DEMOCRÁTICO TRABALHISTA',12);
INSERT INtO PARTIDO(sigla,partido,legenda) values('PT','PARTIDO DOS TRABALHADORES',13);
INSERT INtO PARTIDO(sigla,partido,legenda) values('DEM','DEMOCRATAS',25);
INSERT INtO PARTIDO(sigla,partido,legenda) values('PCdoB','PARTIDO COMUNISTA DO BRASIL',65);
INSERT INtO PARTIDO(sigla,partido,legenda) values('PSB','PARTIDO SOCIALISTA BRASILEIRO',40);
INSERT INtO PARTIDO(sigla,partido,legenda) values('PSDB','PARTIDO DA SOCIAL DEMOCRACIA BRASILEIRA',45);
INSERT INtO PARTIDO(sigla,partido,legenda) values('PTC','PARTIDO TRABALHISTA CRISTÃO',36);
INSERT INtO PARTIDO(sigla,partido,legenda) values('PSC','PARTIDO SOCIAL CRISTÃO',20);
INSERT INtO PARTIDO(sigla,partido,legenda) values('PMN','PARTIDO DA MOBILIZAÇÃO NACIONAL',33);
INSERT INtO PARTIDO(sigla,partido,legenda) values('CIDADANIA','CIDADANIA',23);
INSERT INtO PARTIDO(sigla,partido,legenda) values('PV','PARTIDO VERDE',43);
INSERT INtO PARTIDO(sigla,partido,legenda) values('AVANTE','AVANTE',70);
INSERT INtO PARTIDO(sigla,partido,legenda) values('PP','PROGRESSISTAS',11);
INSERT INtO PARTIDO(sigla,partido,legenda) values('PSTU','PARTIDO SOCIALISTA DOS TRABALHADORES UNIFICADO',16);
INSERT INtO PARTIDO(sigla,partido,legenda) values('PCB','PARTIDO COMUNISTA BRASILEIRO',21);
INSERT INtO PARTIDO(sigla,partido,legenda) values('PRTB','PARTIDO RENOVADOR TRABALHISTA BRASILEIRO',28);
INSERT INtO PARTIDO(sigla,partido,legenda) values('DC','DEMOCRACIA CRISTÃ',27);
INSERT INtO PARTIDO(sigla,partido,legenda) values('PCO','PARTIDO DA CAUSA OPERÁRIA',29);
INSERT INtO PARTIDO(sigla,partido,legenda) values('PODE','PODEMOS',19);
INSERT INtO PARTIDO(sigla,partido,legenda) values('PSL','PARTIDO SOCIAL LIBERAL',17);
INSERT INtO PARTIDO(sigla,partido,legenda) values('REPUBLICANOS','REPUBLICANOS',10);
INSERT INtO PARTIDO(sigla,partido,legenda) values('PSOL','PARTIDO SOCIALISMO E LIBERDADE',50);
INSERT INtO PARTIDO(sigla,partido,legenda) values('PL','PARTIDO LIBERAL',22);
INSERT INtO PARTIDO(sigla,partido,legenda) values('PSD','PARTIDO SOCIAL DEMOCRÁTICO',55);
INSERT INtO PARTIDO(sigla,partido,legenda) values('PATRIOTA','PATRIOTA',51);
INSERT INtO PARTIDO(sigla,partido,legenda) values('PROS','PARTIDO REPUBLICANO DA ORDEM SOCIAL',90);
INSERT INtO PARTIDO(sigla,partido,legenda) values('SOLIDARIEDADE','SOLIDARIEDADE',77);
INSERT INtO PARTIDO(sigla,partido,legenda) values('NOVO','PARTIDO NOVO',30);
INSERT INtO PARTIDO(sigla,partido,legenda) values('REDE','REDE SUSTENTABILIDADE',18);
INSERT INtO PARTIDO(sigla,partido,legenda) values('PMB','PARTIDO DA MULHER BRASILEIRA',35);
INSERT INtO PARTIDO(sigla,partido,legenda) values('UP','UNIDADE POPULAR',80);

-- 1,n
create table if not exists eleicoesanteriores(

	ideleicaoesanteriores serial primary key,
	cargo varchar(30),
	ideleicao bigint,
	id_candidato_eleicoes_anteriores bigint, -- vinculo tabela principal
	local varchar(150),
	nomeCandidato varchar(150),
	nomeUrna varchar(150),
	nrAno int,
	partido varchar(13),
	sgUe varchar(16),
	situacaoTotalizacao varchar(50),
	txtLink varchar(200)
);
-- 1,n
create table if not exists bens(

	idbens serial primary key,
	dataUltimaAtualizacao date,
	descricao varchar,
	descricaoDeTipoDeBem varchar,
	ordem int,
	valor real,
	id_candidato_bens bigint
);

-- fiquei na duvida por isso fiz 1,1
create table if not exists eleicao(

	ideleicao serial primary key,
	id bigint,
	id_candidato bigint, -- vinculo para tabela principal
	siglaUF varchar(20),
	localidadeSgUe varchar(20),
	ano int,
	codigo varchar(20),
	nomeEleicao varchar,
	tipoEleicao varchar,
	turno varchar,
	tipoAbrangencia varchar,
	dataEleicao date,
	codSituacaoEleicao varchar,
	descricaoSituacaoEleicao varchar,
	descricaoEleicao int

);
-- 1,n
create table if not exists arquivos(

	 idArquivo bigint,
	 nome varchar(70),
	 url varchar(200),
	 tipo varchar(15),
	 codTipo int,
	 fullFilePath varchar,
	 fileInputStream varchar,
	 fileByteArray varchar,
	 id_candidato_arquivos bigint

);

create table if not exists candidatos(

   idcandidato serial primary key ,
   id bigint,
   nomeUrna varchar(150),
   numero int,
   idCandidatoSuperior int,
   nomeCompleto varchar(150),
   descricaoSexo varchar(10),
   dataDeNascimento date,
   tituloEleitor varchar(20),
   cpf varchar(11),
   descricaoEstadoCivil varchar(30),
   descricaoCorRaca varchar(30),
   descricaoSituacao varchar(200),
   nacionalidade varchar(100),
   grauInstrucao varchar(100),
   ocupacao varchar(100),
   gastoCampanha1T real,
   gastoCampanha2T real,
   sgUfNascimento varchar(3),
   nomeMunicipioNascimento varchar(100),
   localCandidatura varchar(100),
   ufCandidatura varchar(20),
   ufSuperiorCandidatura varchar(3),
   dataUltimaAtualizacao date,
   fotoUrl varchar(200),
   fotoDataUltimaAtualizacao varchar(200),
   descricaoTotalizacao varchar(70),
   nomeColigacao varchar(200),
   composicaoColigacao varchar(200),
   numeroProcessoDrap varchar(200),
   numeroProcessoDrapEncrypt varchar(200),
   numeroProcesso varchar(200),
   numeroProcessoEncrypt varchar(200),
   numeroProcessoPrestContas varchar(200),
   numeroProcessoPrestContasEncrypt varchar(200),
   numeroProtocolo varchar(200),
   idcargo int,
   idpartido int,
   totalDeBens real,
   id_eleicao_candidato int,
   --substituto varchar(200), essa na verdade é um array
   motivos varchar(200),
   codigoSituacaoCandidato int,
   descricaoSituacaoCandidato varchar(20),
   st_SUBSTITUIDO boolean,
   descricaoNaturalidade varchar(200),
   st_MOTIVO_AUSENCIA_REQUISITO boolean,
   st_MOTIVO_CONDUTA_VEDADA boolean,
   cnpjcampanha varchar(16),
   gastoCampanha real,
   st_MOTIVO_ABUSO_PODER boolean,
   st_MOTIVO_COMPRA_VOTO boolean,
   ds_MOTIVO_OUTROS boolean,
   st_MOTIVO_GASTO_ILICITO boolean,
   st_MOTIVO_IND_PARTIDO boolean,
   st_MOTIVO_FICHA_LIMPA boolean,
   st_DIVULGA_ARQUIVOS boolean,
   st_DIVULGA_BENS boolean,
   st_DIVULGA boolean,
   st_REELEICAO boolean

);

create table if not exists substituto(

   id serial primary key,
   sqEleicao bigint,
   sqCandidato bigint,
   sgUe varchar(20),
   nrAno int,
   nmCandidato varchar(70),
   url varchar(200),
   id_Candidato bigint
);

delete from candidatos;
delete from candidato_cargo;
delete from emails;
delete from sites;
delete from vice;
delete from eleicoesanteriores;
delete from bens;
delete from eleicao;
delete from arquivos;
delete from substituto;
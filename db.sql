--cargos
CREATE TABLE IF NOT EXISTS Cargos(

	idcargo serial primary key,
	cargo varchar(20)
);

insert into cargo(id, cargo) values(1,'Presidente');
insert into cargo(id, cargo) values(3,'Governador');
insert into cargo(id, cargo) values(5,'Senador');
insert into cargo(id, cargo) values(11,'Prefeito');
insert into cargo(id, cargo) values(6,'Deputado Federal');
insert into cargo(id, cargo) values(7,'Deputado Estadual');
insert into cargo(id, cargo) values(8,'Deputado Distrital');
insert into cargo(id, cargo) values(9,'Vereador');

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
	nm_URNA: varchar(50),
	nomeColigacao varchar(50),
	nr_CANDIDATO integer,
	sg_PARTIDO varchar(10),
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
	sigla varchar(10)
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

	ideleicaoesanteriores serial primay key,
	cargo varchar(30),
	ideleicao bigint,
	id_candidato_eleicoes_anteriores bigint, -- adicionada por conta
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

	ideleicao serial primary key,-- vinculo para tabela principal
	id bigint,
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



   "id":120000633197,
   "nomeUrna":"LEANDRO BORTOLAZZI",
   "numero":15,
   "idCandidatoSuperior":0,
   "nomeCompleto":"EMERSON LEANDRO BORTOLAZZI",
   "descricaoSexo":"MASC.",
   "dataDeNascimento":"1977-06-08",
   "tituloEleitor":"015125841902",
   "cpf":"01964324998",
   "descricaoEstadoCivil":"Casado(a)",
   "descricaoCorRaca":"BRANCA",
   "descricaoSituacao":"Deferido com recurso",
   "nacionalidade":"Brasileira nata",
   "grauInstrucao":"Superior completo",
   "ocupacao":"Empres\u00e1rio",
   "gastoCampanha1T":1193316.81,
   "gastoCampanha2T":0,
   "sgUfNascimento":"PR",
   "nomeMunicipioNascimento":"PARA\u00cdSO DO NORTE",
   "localCandidatura":"COSTA RICA",
   "ufCandidatura":"98035",
   "ufSuperiorCandidatura":"MS",
   "dataUltimaAtualizacao":"2020-10-04",
   "fotoUrl":"http://divulgacandcontas.tse.jus.br/candidaturas/oficial/2020/MS/98035/426/candidatos/86830/DSC_2077 urna.jpg",
   "fotoDataUltimaAtualizacao":null,
   "descricaoTotalizacao":"Concorrendo",
   "nomeColigacao":"SEGUE O TRABALHO, SEGUEM AS MUDAN\u00c7AS. COSTA RICA N\u00c3O PODE PARAR.",
   "composicaoColigacao":"REPUBLICANOS / PDT / PTB / MDB / PSL / PL / CIDADANIA / DEM / PSB / SOLIDARIEDADE / PT",
   "numeroProcessoDrap":"06000285920206120038",
   "numeroProcessoDrapEncrypt":"a445fcfe82a0487abd9f47fa46404fd4afd5774afc0e6b373c94518a892104aaa51fc66567b5510d",
   "numeroProcesso":"06000302920206120038",
   "numeroProcessoEncrypt":"b87e7378e1249c89bd9f47fa46404fd4afd5774afc0e6b373c94518a892104aaa51fc66567b5510d",
   "numeroProcessoPrestContas":null,
   "numeroProcessoPrestContasEncrypt":null,
   "numeroProtocolo":null,
   "idcargo":11,
   "idpartido":15,
   "totalDeBens":719178.32,
   "id_eleicao_candidato": 1222,
   "substituto":null,
   "motivos":null,
   "codigoSituacaoCandidato":16,
   "descricaoSituacaoCandidato":"APTO",
   "st_SUBSTITUIDO":false,
   "descricaoNaturalidade":"PR-PARA\u00cdSO DO NORTE",
   "st_MOTIVO_AUSENCIA_REQUISITO":false,
   "st_MOTIVO_CONDUTA_VEDADA":false,
   "cnpjcampanha":"38396236000161",
   "gastoCampanha":0.0,
   "st_MOTIVO_ABUSO_PODER":false,
   "st_MOTIVO_COMPRA_VOTO":false,
   "ds_MOTIVO_OUTROS":null,
   "st_MOTIVO_GASTO_ILICITO":false,
   "st_MOTIVO_IND_PARTIDO":false,
   "st_MOTIVO_FICHA_LIMPA":false,
   "st_DIVULGA_ARQUIVOS":false,
   "st_DIVULGA_BENS":true,
   "st_DIVULGA":true,
   "st_REELEICAO":false









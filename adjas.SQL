create database compagniaAerea

create table volo (
    #volo integer primary key,
    orarioPartenza time,
    orarioArrivo time,
    nazionale boolean,
    oraPartenzaEffettiva time,
    oraArrivoEffettiva time,
    postiDisponibili integer,
    postiPrenotati integer
    );

create table aeroporto(
    nome varchar(10) primary key,
    nazione varchar(10),
    citta varchar(10),
    #piste integer
)

create table tipoDiAereo(
    nome varchar(10) primary key,
    numeroMassimoMerci integer,
    numeroMassimoPasseggeri integer
);

create table casaCostruttrice(
    nome varchar(10) primary key;
);

create table partenza(
    #volo integer primary key,
    nomeAeroporto varchar(10),
    foreign key (nomeAeroporto) references aeroporto(nome)
);

create table arrivo(
    #volo integer primary key,
    nomeAeroporto varchar(10),
    foreign key (nomeAeroporto) references aeroporto(nome)
);

create table utilizza(
    #volo integer primary key,
    nome varchar(10)
);

create table costruisce(
    nome varchar(10),
    tipoDiAereo varchar(10),
    primary key(nome,tipoDiAereo)
);

create table pista(
    #pista integer,
    nomeAeroporto varchar(10),
    primary key(#pista,nomeAeroporto)
);
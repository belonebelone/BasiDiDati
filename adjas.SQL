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
    foreign key (nomeAeroporto) references aeroporto(nome),
    foreign key (#volo) references volo(#volo)
);

create table arrivo(
    #volo integer primary key,
    nomeAeroporto varchar(10),
    foreign key (nomeAeroporto) references aeroporto(nome),
    foreign key (#volo) references volo(#volo)
);

create table utilizza(
    #volo integer primary key,
    nome varchar(10),
    foreign key (#volo) references volo(#volo),
    foreign key (nome) references tipoDiAereo(nome)
);

create table costruisce(
    nome varchar(10),
    tipoDiAereo varchar(10),
    primary key(nome,tipoDiAereo),
    foreign key (nome) references casaCostruttrice(nome),
    foreign key (tipoDiAereo) references tipoDiAereo(nome)
);

create table pista(
    #pista integer,
    nomeAeroporto varchar(10),
    primary key(#pista,nomeAeroporto)
    foreign key (nomeAeroporto) references aeroporto(nome)
);

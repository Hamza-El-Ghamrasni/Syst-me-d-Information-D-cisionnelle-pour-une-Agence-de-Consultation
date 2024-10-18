CREATE TABLE timee(
id_date DATE NOT NULL primary key,
annee VARCHAR(50),
semestre INTEGER,
mounth_name VARCHAR(50),
weakday_name VARCHAR(50),
mounth_number INTEGER,
weakday_number INTEGER);

CREATE TABLE entreprise(
siren INTEGER NOT NULL primary key,
nom VARCHAR(50),
statut VARCHAR(50),
secteur_activite VARCHAR(100),
date_creation DATE);

CREATE TABLE entreprise_details(
id_entreprise INTEGER not null primary key,
capital float,
chiffre_affaire float,
effectif float,
resultat float);

CREATE TABLE geography(
geolocalisation VARCHAR2(50) primary key,
code_region INTEGER,
region VARCHAR(100),
ville VARCHAR(50));


CREATE TABLE agence (
siren INTEGER not null  ,
id_entreprise INTEGER  not null,
id_date DATE , 
geolocalisation VARCHAR2(50),
total_chiffre_affaire decimal(14) not null,
min_capital decimal(14) not null, 
total_effectif VARCHAR2(50) NOT NULL,
total_resultat decimal(14) not null,
foreign key(siren) references entreprise (siren),
foreign key(id_entreprise) references entreprise_details (id_entreprise),
foreign key(id_date) references timee (id_date),
foreign key(geolocalisation) references geography (geolocalisation));




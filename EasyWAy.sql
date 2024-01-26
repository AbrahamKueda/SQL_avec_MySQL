create database if not exists easyway_db;
use easyway_db;

create table if not exists Utilisateur
(
id_Utilisateur varchar(11),
nom_Utilisateur varchar(25),
telephone_Utilisateur varchar(12),
constraint pk_utilisateur primary key (id_Utilisateur),
constraint ck_telephone check (LENGTH(telephone_Utilisateur)>=9),
constraint uq_telephone unique (telephone_Utilisateur)
);
create table if not exists Service
(
id_Service varchar(11),
description varchar(128),
constraint pk_service primary key (id_Service)
);

create table if not exists Fournisseur
(
id_Fournisseur varchar(11),
nom_Fournisseur varchar(25),
telephone_Fournisseur varchar(12),
constraint pk_fournisseur primary key (id_Fournisseur),
constraint ck_telephone check (LENGTH(telephone_Fournisseur)>=9),
constraint uq_telephone unique (telephone_Fournisseur)
);

create table if not exists Recherche
(
id_Recherche varchar(11),
id_Utilisateur varchar(11) not null,
description varchar(64),
constraint pk_recherche primary key (id_Recherche),
constraint fk_recherche_utilisateur foreign key(id_Utilisateur) references Utilisateur(id_Utilisateur));

create table if not exists Concerner
(
id_Recherche varchar(11),
id_Service varchar(11),
date_Recherche timestamp,
constraint fk_concerner_utilisateur foreign key(id_Service) references Service(id_Service),
constraint fk_concerner_recherche foreign key(id_Recherche) references Recherche(id_Recherche)
);


create table if not exists Obtenir
(
id_Service varchar(11),
id_Fournisseur varchar(11),
date timestamp,
constraint fk_Obtenir_Service foreign key(id_Service) references Service(id_Service),
constraint fk_Obtenir_Fournisseur foreign key(id_Fournisseur) references Fournisseur(id_Fournisseur)
);
drop database if exists gestion_commande;
create database gestion_commande;
use gestion_commande;

create table clients(
						id int auto_increment,
                        nom varchar(32) not null,
                        prenom varchar(32),
                        sexe varchar(2),
                        ville varchar(32) not null,
                        constraint pk_clients primary key (id));
alter table clients auto_increment = 8;

create table article(
						id_article int auto_increment,
                        nom_article varchar(32) not null,
                        prix_HT int not null,
                        constraint pk_article primary key (id_article));
alter table article modify nom_article varchar(64) not null;
alter table article modify prix_HT int;
create table commande(
						id_cmde int auto_increment,
                        acheteur int not null,
                        dateCommande date not null,
                        constraint pk_cmde primary key (id_cmde),
                        constraint fk_cmde_clients foreign key (acheteur) references clients(id));
alter table commande auto_increment = 2;

create table ligne_cmde(
							cmde int,
                            article int,
                            qte int not null,
                            constraint pk_ligne_cmde primary key (cmde, article),
                            constraint fk_lc_cmde foreign key (cmde) references commande(id_cmde),
                            constraint fk_lc_article foreign key (article) references article(id_article));
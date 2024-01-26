create database gestion_commande;

/*
Pour creer la table on utilise
create table nom_table(
						attrib1 type NULL | DEFAULT | NOT NULL |UNIQUE,
                        attrib2 type ...,
                        attrib3 type....,
                        attribn type.....);



*/
#Creer une table

create table clients(
						id int auto_increment,
                        nom varchar(32) not null,
                        prenom varchar(32),
                        sexe varchar(2),
                        ville varchar(32),
                        constraint pk_client primary key (id));
create table article(
						id_article int auto_increment,
                        nom_article varchar(32),
                        prix_HT int,
                        constraint pk_article primary key (id_article));
create table commande(
						id_cmde int auto_increment,
                        acheteur int,
                        date date,
                        constraint pk_id_cmde primary key (id_cmde));
create table ligne_commande(
							cmde int,
                            article int,
                            quantite int,
                            constraint pk_ligne_commande primary key (cmde, article),
                            constraint fk_ligne_cmde_article foreign key (article) references article(id_article),
                            constraint fk_ligne_cmde_cmde foreign key (cmde) references commande(id_cmde));
                            
alter table clients auto_increment = 8;
alter table commande auto_increment = 2;

alter table commande add constraint fk_cmd_client foreign key (acheteur) references clients(id);

insert into clients(nom,sexe,ville)
		values("Atata",'F','Douala');



update clients set sexe = "F", ville = "Douala" where id = 8;

delete from clients where id = 8;                        
                        
                        

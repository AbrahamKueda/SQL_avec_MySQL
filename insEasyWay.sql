load data infile 'C:\\Users\\AK\\Documents\\Devoir\\Systeme_Information\\TP x Projet\\utilisateur.txt'
replace into table Utilisateur
fields terminated by ';' enclosed by '"'
lines starting by 'Utilisateur' terminated by '$';

select * from Utilisateur;

load data infile 'C:\\Users\\AK\\Documents\\Devoir\\Systeme_Information\\TP x Projet\\recherche.txt'
replace into table Recherche
fields terminated by ';' enclosed by '"'
lines starting by 'Recherche' terminated by '$';

select * from Recherche;

load data infile 'C:\\Users\\AK\\Documents\\Devoir\\Systeme_Information\\TP x Projet\\service.txt'
replace into table Service
fields terminated by ';' enclosed by '"'
lines starting by 'Service' terminated by '$';

select * from Service;


load data infile 'C:\\Users\\AK\\Documents\\Devoir\\Systeme_Information\\TP x Projet\\concerner.txt'
replace into table Concerner
fields terminated by ';' enclosed by '"'
lines starting by 'Concerner' terminated by '$';

select * from Concerner;



load data infile 'C:\\Users\\AK\\Documents\\Devoir\\Systeme_Information\\TP x Projet\\fournisseur.txt'
replace into table Fournisseur
fields terminated by ';' enclosed by '"'
lines starting by 'Fournisseur' terminated by '$';

select * from Fournisseur;

load data infile 'C:\\Users\\AK\\Documents\\Devoir\\Systeme_Information\\TP x Projet\\obtenir.txt'
replace into table Obtenir
fields terminated by ';' enclosed by '"'
lines starting by 'Obtenir' terminated by '$';

select * from Obtenir;
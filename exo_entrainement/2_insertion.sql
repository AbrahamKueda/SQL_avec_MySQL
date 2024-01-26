insert into clients(nom, prenom,sexe, ville)
			values('Atata','Anne','F','Douala'),
				  ('Tchouassi','Franck','M','Yaounde'),
				  ('Tene','Vanessa','M','Douala'),
				  ('Yaya','Toure','F','Bouake'),
				  ('Dia','mamadou','M','Youpougon'),
				  ('Didi','Daouda','F','Bamboura'),
				  ('Akouemou','Edward','F','Douala'),
				  ('Nono','Antoine','M','Yaounde');

insert into article(nom_article, prix_HT)
		values('Ordinateur portable', 200000),
			  ('Imprimante', 60000),
			  ('Papier', 5000),
			  ('Ordinateur de bureau', 505000),
			  ('Imprimante',120000),
			  ('Assiette', 5320),
			  ('serpiere',1125),
			  ('Savon',867),
			  ('Lait', 7645),
			  ('papier toilette', null),
              ('Serviette de table', 1500);
load data infile "C:\\Users\\AK\\Documents\\Devoir\\Systeme_Information\\cmde.txt"
replace into table commande
fields terminated by ';'
		enclosed by '"'
lines starting by 'cmde'
	  terminated by '$';
select * from commande;
truncate commande;
      
load data infile "C:\\Users\\AK\\Documents\\Devoir\\Systeme_Information\\lg.txt"
replace into table ligne_cmde
fields terminated by ';'
		enclosed by '"'
lines starting by 'lg'
		terminated by '$';
        
        

					
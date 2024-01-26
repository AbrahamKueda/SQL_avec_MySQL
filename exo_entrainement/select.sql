/*
 Donner la liste des articles dont le nom ne contient pas le caractère «a»
*/
select * from article where nom_article not like "%a%";
/*
Donner la liste des articles dont le prix est supérieur à 25000f CFA
*/
select * from article where prix > 25000;
/*
Donner la liste des clients qui ont passé une commande passer entre 20 janvier 2009 et 
31 novembre 2012.
*/
select c.* 
from clients c,
	 commande ce
where c.id = ce.acheteur
and dateCommande between '2009-01-20' and '2012-11-31';

alter table article add tva double(5,2) default 19.5; 

update article set prix_ht = 325 where id_article = 10;

alter table article change prix_HT prix int not null;
select * from article;

create table PRIXTT1
(select nom_article, prix*(1+0.19) as TT, qte, 
(Prix*(1+0.19)*qte) as M 
 from article, ligne_cmde);
 
 select * from ligne_cmde;
 
 
 select a.* from article a, ligne_cmde l 
 where not l.article = a.id_article; 



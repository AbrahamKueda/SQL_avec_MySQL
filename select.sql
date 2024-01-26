use easyway_db;
select * from utilisateur where telephone_Utilisateur like '%9%9%';
select * from service where description like '%transfert%' or '%Transfert%';
select * from service, obtenir where service.id_Service = obtenir.id_Service and obtenir.date between '2022-11-1 00:00:00' and '2023-12-30 23:59:59';
select * from fournisseur where telephone_Fournisseur not like '%7%' and nom_Fournisseur like '%j%' or '%J%';
select * from utilisateur where telephone_Utilisateur like '_9%'  or '_55%' or '_56%' or '_57%' or '_58%' or '_59%';

select s.*,count(c.id_Service) as c from service s, concerner c
where s.id_Service = c.id_Service
group by s.id_Service
having count(c.id_Service) = 5;

select max(id_Service) from concerner group by id_Service; 

#Le service le plus populaire
#Le service le plus rechercher
select s.*, count(c.id_Service) as nbr_de_Fois from service s, concerner c
where s.id_Service = c.id_Service
group by c.id_Service
having  nbr_de_Fois =
 (select max(S1.d1) from (select count(id_Service) as d1 from concerner group by id_Service) as S1);
 
 insert into utilisateur values('us11','Abraham', '6789065432');
 
 update utilisateur set id_Utilisateur = 'us11' where nom_Utilisateur = 'Abraham' and telephone_utilisateur = '67890654332';
 
 
 select * from utilisateur;
 
 select * from utilisateur where nom_Utilisateur like '%j%';
 select * from utilisateur where nom_Utilisateur like '_a%';
 
 
 

 
 select u.*
 from Utilisateur u, 
	  Recherche r,
      Concerner c,
      Service s
where u.id_Utilisateur = r.id_Utilisateur and
	  r.id_Recherche = c.id_Recherche and
      c.id_Service = s.id_Service and
      c.id_Service = (select id_Service from
											(
												select s.*, count(c.id_Service) as nbr_de_Fois from service s, concerner c
												where s.id_Service = c.id_Service
												group by c.id_Service
												having count(nbr_de_Fois) =
																		(select max(S1.d1) from
                                                                        (select count(id_Service) as d1 from concerner group by id_Service)
                                                                        as S1)                                            
                                            ) as S2)
	into outfile 'C:\\Users\\AK\\Documents\\Devoir\\Systeme_Information\\utilisateurs.txt'
    fields terminated by ';' enclosed by '"'
    lines starting by 'utilisateur' terminated by '$';

      
 
 select * from recherche;
 select * from concerner;
 
 
 select * from concerner;





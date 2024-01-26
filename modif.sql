use easyway_db;
ALTER TABLE obtenir ADD CONSTRAINT pk_obtenir PRIMARY KEY (id_Service, id_fournisseur);
ALTER TABLE concerner ADD CONSTRAINT pk_obtenir PRIMARY KEY (id_Recherche, id_Service);
DESC obtenir;
DESC concerner;
ALTER TABLE Concerner DISABLE KEYS;
 ALTER TABLE concerner ADD COLUMN prix int default 1000  AFTER id_Service;
 #Pour mettre on dit before
 
 ####################################################### Modification de la structure #############################################

#Renommer une ou plusieur table
/*
RENAME [nomBase.]ancienNomTable TO [nomBase.] nouveauNomTable
		[,[nomBase.] ancienNom2 TO [nomBase.]nouveauNom2]];
 
 ALTER TABLE nom_table RENAME TO nouveau_nom
 
 */
 
 #Ajouter une ou plusieur colonne
 /*
 ALTER TABLE nom_table
 ADD (col1 type [DEFAULT] [NULL] [NOT NULL]...,
 col2 type [DEFAULT] [NULL] [NOT NULL]...);
 
 Note : On peut ajouter la contrainte NOT NULL dans le cas ou la table est vide
		ou il y a un default
 
 */
 
 #Renommer une colonne
 
 /*
 ALTER TABLE [nomBase].nomTable CHANGE [COLUMN] ancienNom
 nouveauNom typeMySQL [NOT NULL | NULL] [DEFAULT valeur]
 [AUTO_INCREMENT] [UNIQUE [KEY] | [PRIMARY] KEY]
 [COMMENT 'chaine'] [REFERENCES ...]
 [FIRST|AFTER nomColonne];
 
 Note : Le nom doit etre different des nom des columns de la table,
		Le type doit etre prceisee
 
 */
 
 #Modfier une colonne sans renommer
 
 /*
 ALTER TABLE [nomBase].nomTable MODIFY [COLUMN] nomColonneAmodifier
 typeMySQL [NOT NULL | NULL] [DEFAULT valeur]
 [AUTO_INCREMENT] [UNIQUE [KEY] | [PRIMARY] KEY]
 [COMMENT 'chaine'] [REFERENCES ...]
 [FIRST|AFTER nomColonne];
 
 Note : Si on ajoute des contraintes les donnees deja presente devront respecter ces contraintes
 
 */
 
 #On peut modifier la valeur par defaut
 
 /*
 ALTER TABLE [nomBase].nomTable ALTER [COLUMN] nomColonneAmodifier
 {SET DEFAULT ‘chaine’ | DROP DEFAULT};

 */
 
#Supprimer une column

/*
ALTER TABLE [nomBase].nomTable DROP
 { [COLUMN] nomColonne | PRIMARY KEY 
 | INDEX nomIndex | FOREIGN KEY nomContrainte }
 
 Note : Ne permet pas de supprimer toute les column d'une table
		Ne peut pas etre utiliser pour supprimer les column qui ont

*/ 

 ####################################################### Modification du comportement #############################################
 #Ajout d'une ou plusieur coonstrainte ou Index
 
 /*
 ALTER TABLE [nomBase].nomTable ADD
 { INDEX [nomIndex] [typeIndex] (nomColonne1,...)
 | CONSTRAINT nomContrainte typeContrainte,
	CONSTRAINT nomContrainte typeContrainte}
 
 Note : Trois type de contraintes sont possible
		Cles primaire
        Etrangere
        Unicite
 */
 
 #Desactivation des contrainte
 
 /*
	SET FOREIGN_KEY_CHECKS=0;
 */
 
 #Activation des contrainte
 /*
	SET FOREIGN_KEY_CHECKS=1;
 */
 #Supprimer les contrainte
 
 /*
 ALTER TABLE nomTable DROP CONSTRAINT nom_personne;
 
 #Supprimer une contrainte NOT NULL avec MODIFY
 
 ALTER TABLE nom_Table MODIFY nom_clounm TypeMysql NULL;
 
 #Supprimer une contrainte d'unicite
 
 ALTER TABLE nom_contrainte DROP INDEX un_contrainte;
 
 #Supprimer une contrainte primary Key
 
 ALTER TABLE [nomBase].nomTable DROP PRIMARY KEY nomContrainte;
 
 #Supprimer une contrainte de cles etrangere
 
 ALTER TABLE [nomBase].nomTable DROP FOREIGN KEY nomContrainte;
 
 #
 Contraintes différées
Les contraintes que nous avons étudiées jusqu’à maintenant sont des contraintes immédiates
(immediate) qui sont contrôlées après chaque instruction. Une contrainte est dite « différée »
(deferred) si elle déclenche sa vérification seulement à la fin de la transaction (première
instruction commit rencontrée). Pour l’heure, MySQL avec InnoDB ne propose pas ce mode
de programmation.
 
 */
 
 
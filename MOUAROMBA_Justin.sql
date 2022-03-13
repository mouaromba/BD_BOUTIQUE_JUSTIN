/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de cr�ation :  11/03/2022 13:26:22                      */
/*==============================================================*/


drop table if exists Achats;

drop table if exists Articles;

drop table if exists Categorie;

drop table if exists Clients;

drop table if exists Fournisseurs;

drop table if exists Roles;

drop table if exists Utilisateurs;

drop table if exists Ventes;

/*==============================================================*/
/* Table : Achats                                               */
/*==============================================================*/
create table Achats
(
   codeAchat            int not null,
   codeUtilis           int not null,
   codeFourn            int not null,
   codeArt              int not null,
   dateAchat            date,
   quantite             int,
   prixunit             float,
   prixTot              float,
   primary key (codeAchat)
);

/*==============================================================*/
/* Table : Articles                                             */
/*==============================================================*/
create table Articles
(
   codeArt              int not null,
   codeCate             int not null,
   libele               varchar(254),
   description          varchar(254),
   prixUnitaire         float,
   quantit              int,
   categorie            varchar(254),
   primary key (codeArt)
);

/*==============================================================*/
/* Table : Categorie                                            */
/*==============================================================*/
create table Categorie
(
   codeCate             int not null,
   nomCateg             varchar(254),
   primary key (codeCate)
);

/*==============================================================*/
/* Table : Clients                                              */
/*==============================================================*/
create table Clients
(
   codeCli              int not null,
   nom                  varchar(254),
   prenom               varchar(254),
   adresse              varchar(254),
   tel                  int,
   email                varchar(254),
   primary key (codeCli)
);

/*==============================================================*/
/* Table : Fournisseurs                                         */
/*==============================================================*/
create table Fournisseurs
(
   codeFourn            int not null,
   nomFourn             varchar(254),
   prenomFourn          varchar(254),
   adresse              varchar(254),
   numTele              int,
   emailFourn           varchar(254),
   primary key (codeFourn)
);

/*==============================================================*/
/* Table : Roles                                                */
/*==============================================================*/
create table Roles
(
   codeRole             int not null,
   nomRole              varchar(254),
   primary key (codeRole)
);

/*==============================================================*/
/* Table : Utilisateurs                                         */
/*==============================================================*/
create table Utilisateurs
(
   codeUtilis           int not null,
   codeRole             int not null,
   nomUtilis            varchar(254),
   emailUtilis          varchar(254),
   motDePasse           varchar(254),
   primary key (codeUtilis)
);

/*==============================================================*/
/* Table : Ventes                                               */
/*==============================================================*/
create table Ventes
(
   codeVente            int not null,
   codeArt              int not null,
   codeCli              int not null,
   codeUtilis           int not null,
   dateVente            date,
   quante               int,
   prixUnita            float,
   prixTota             float,
   primary key (codeVente)
);



INSERT INTO `achats` (`codeAchat`, `codeUtilis`, `codeFourn`, `codeArt`, `dateAchat`, `quantite`, `prixunit`, `prixTot`)
 VALUES
(11, 1020, 101, 41, '0000-00-00 ', 100, 25440.5, 2544050),
(12, 1021, 102, 42, '0000-00-00 ', 100, 15440.5, 1544050),
(13, 1022, 103, 43, '0000-00-00 ', 10, 45440.5, 454404),
(14, 1023, 104, 44, '0000-00-00 ', 100, 45440.5, 4544040),
(15, 1024, 105, 45, '0000-00-00 ', 100, 45440.5, 45440500);


INSERT INTO `articles` (`codeArt`, `codeCate`, `libele`, `description`, `prixUnitaire`, `quantit`, `categorie`)
 VALUES
(41, 21, 'Souris', 'HP', 2500.6, 10, 'CATA'),
(42, 22, 'Disque_dure', 'Sata', 45000.8, 100, 'CATC'),
(43, 23, 'RAM', 'HP', 7500.74, 105, 'CATB'),
(44, 24, 'casque', 'Sony', 17500.7, 100, 'CATB'),
(45, 25, 'Batterie', 'DELL', 14500.8, 100, 'CATE');



INSERT INTO `categorie` (`codeCate`, `nomCateg`)
 VALUES
(21, 'HP'),
(22, 'Apple'),
(23, 'Itel'),
(24, 'Techno'),
(25, 'Alcatel');



INSERT INTO `clients` (`codeCli`, `nom`, `prenom`, `adresse`, `tel`, `email`) 
VALUES
(1000, 'Boris', 'Ribos', '01bp0101', 50515253, 'boris@gmail.com'),
(1001, 'coris', 'cibos', '01bp0102', 51515253, 'coris@gmail.com'),
(1002, 'Doris', 'Dibos', '01bp0103', 52515253, 'Doris@gmail.com'),
(1003, 'Foris', 'Fibos', '01bp0104', 53515253, 'Foris@gmail.com'),
(1004, 'Goris', 'Gibos', '01bp0105', 54515253, 'Goris@gmail.com');


INSERT INTO `fournisseurs` (`codeFourn`, `nomFourn`, `prenomFourn`, `adresse`, `numTele`, `emailFourn`) 
VALUES
(100, 'Mada', 'Perfi', '02bp0201', 40414243, 'mada@gmail.com'),
(101, 'fada', 'eric', '02bp0202', 41414243, 'fada@gmail.com'),
(102, 'grada', 'lucio', '02bp0203', 42414243, 'grada@gmail.com'),
(103, 'preda', 'oulson', '02bp0204', 43414243, 'preda@gmail.com'),
(104, 'olva', 'vlaus', '02bp0205', 44414243, 'olva@gmail.com'),
(105, 'damal', 'ertus', '02bp0206', 45414243, 'damal@gmail.com');



INSERT INTO `roles` (`codeRole`, `nomRole`)
VALUES
(1, 'Vendre'),
(2, 'Stocker'),
(3, 'Incrementer'),
(4, 'Chercher'),
(5, 'Valider');


INSERT INTO `utilisateurs` (`codeUtilis`, `codeRole`, `nomUtilis`, `emailUtilis`, `motDePasse`)
VALUES
(1020, 1, 'Jusy', 'jsy@gmail.com', 'jus1234'),
(1021, 2, 'Marix', 'mary@gmail.com', 'Mar1234'),
(1022, 3, 'shan', 'shy@gmail.com', 'shy1234'),
(1023, 4, 'Ermy', 'ery@gmail.com', 'ery1234'),
(1024, 5, 'Juspi', 'jpy@gmail.com', 'jps1234');




INSERT INTO `ventes` (`codeVente`, `codeArt`, `codeCli`, `codeUtilis`, `dateVente`, `quante`, `prixUnita`, `prixTota`)
 VALUES
(31, 41, 1000, 1020, 2022/01/22, 1000, 150751, 15075100),
(32, 42, 1001, 1021, 2022/01/25, 1000, 150751, 150751000),
(33, 43, 1002, 1022, 2022/01/27, 1000, 150751, 150751000),
(34, 44, 1003, 1023, 2022/02/02, 1000, 150751, 150751000),
(35, 45, 1004, 1024, 2022/02/10, 1000, 150751, 150751000);


ALTER TABLE `achats`
  ADD CONSTRAINT `FK_association6` FOREIGN KEY (`codeFourn`) REFERENCES `fournisseurs` (`codeFourn`),
  ADD CONSTRAINT `FK_association4` FOREIGN KEY (`codeUtilis`) REFERENCES `utilisateurs` (`codeUtilis`),
  ADD CONSTRAINT `FK_association5` FOREIGN KEY (`codeArt`) REFERENCES `articles` (`codeArt`);


ALTER TABLE `articles`
  ADD CONSTRAINT `FK_association8` FOREIGN KEY (`codeCate`) REFERENCES `categorie` (`codeCate`);


ALTER TABLE `utilisateurs`
  ADD CONSTRAINT `FK_association3` FOREIGN KEY (`codeRole`) REFERENCES `roles` (`codeRole`);


ALTER TABLE `ventes`
  ADD CONSTRAINT `FK_association7` FOREIGN KEY (`codeCli`) REFERENCES `clients` (`codeCli`),
  ADD CONSTRAINT `FK_association1` FOREIGN KEY (`codeArt`) REFERENCES `articles` (`codeArt`),
  ADD CONSTRAINT `FK_association2` FOREIGN KEY (`codeUtilis`) REFERENCES `utilisateurs` (`codeUtilis`);
  



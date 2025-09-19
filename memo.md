# Mémo – Notions Clés SQL / Docker / Datagrip

## 1. Bases de données et SQL
- **Base de données (BDD)** : Ensemble organisé de données stockées de façon structurée.  
- **Table** : Contient des données sous forme de lignes (enregistrements) et colonnes (champs).  
- **Colonne / Champ** : Type de donnée d’une table (ex. `VARCHAR`, `INT`).  
- **Ligne / Enregistrement** : Une entrée unique dans une table.  
- **Clé primaire (PRIMARY KEY)** : Identifiant unique d’une ligne.  
- **Clé étrangère (FOREIGN KEY)** : Champ qui référence une clé primaire dans une autre table.  
- **Relations entre tables** :  
  - **1-à-1** : Une ligne ↔ une ligne.  
  - **1-à-plusieurs** : Une ligne ↔ plusieurs lignes.  
  - **Plusieurs-à-plusieurs** : Table de liaison nécessaire (ex. `posts_tags`).  

## 2. Commandes SQL essentielles
- `CREATE DATABASE nom_bdd;` – Crée une base de données.  
- `USE nom_bdd;` – Sélectionne la base active.  
- `CREATE TABLE nom_table (...);` – Crée une table avec colonnes et types.  
- `INSERT INTO table (colonnes) VALUES (...);` – Insère des données.  
- `SELECT ... FROM table WHERE ...;` – Interroge la base.  
- `INNER JOIN` – Combine des tables selon une condition.  
- `COMMIT` – Valide les modifications (transactions).  

## 3. Types de données courants
- `INT` – Entier.  
- `VARCHAR(n)` – Chaîne de caractères (max n).  
- `TEXT` – Texte long.  
- `DECIMAL(p,s)` – Nombre décimal (p = total chiffres, s = chiffres après virgule).  
- `BOOLEAN` – Vrai/faux.  
- `DATETIME` – Date et heure.  

## 4. Docker et MySQL
- **Conteneur Docker** : Environnement isolé pour exécuter une application.  
- **Image Docker** : Modèle pour créer un conteneur.  
- **docker-compose.yml** : Décrit conteneurs, volumes et réseaux pour un projet.  
- **Volumes Docker** : Lient un dossier de ton PC à un conteneur pour persistance de données.  
- **Commandes utiles** :  
  - `docker ps` – Liste conteneurs en fonctionnement.  
  - `docker exec -it nom_conteneur bash` – Accéder au terminal du conteneur.  
  - `docker-compose up -d --build` – Lancer les conteneurs.  
  - `docker-compose down -v` – Arrêter et supprimer conteneurs et volumes.  

## 5. MySQL avancé
- **mysqldump** – Exporter une BDD ou table vers un fichier SQL :  
  ```bash
  mysqldump -u root -p mot_de_passe nom_bdd > fichier.sql



  ## 5. MySQL avancé

- **Export / Import** : Sauvegarde et restauration de bases.  
- **Utilisateurs et permissions** :  
  - `CREATE USER 'nom'@'host' IDENTIFIED BY 'mdp';`  
  - `GRANT ALL PRIVILEGES ON *.* TO 'nom'@'host';` – Admin global.  
  - `GRANT SELECT ON nom_bdd.* TO 'nom'@'host';` – Viewer.  
  - `GRANT INSERT, UPDATE ON nom_bdd.* TO 'nom'@'host';` – Writer.  

## 6. Datagrip

- **IDE pour SQL** : Gestion de bases, création de requêtes et visualisation des résultats.  
- **Connexion MySQL** : Besoin de `host`, `port`, `username` et `password`.  
- **Test Connection** : Vérifie la connexion avant de lancer des requêtes.



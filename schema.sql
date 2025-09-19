
CREATE DATABASE IF NOT EXISTS tp_reverse;
USE tp_reverse;


CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(100),
    lastname VARCHAR(100),
    email VARCHAR(150) UNIQUE,
    password VARCHAR(255),
    is_verified BOOLEAN DEFAULT FALSE,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


CREATE TABLE posts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    title VARCHAR(255),
    content TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);


CREATE TABLE comments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    post_id INT,
    content TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (post_id) REFERENCES posts(id)
);


CREATE TABLE tags (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


CREATE TABLE posts_tags (
    post_id INT,
    tag_id INT,
    PRIMARY KEY(post_id, tag_id),
    FOREIGN KEY(post_id) REFERENCES posts(id),
    FOREIGN KEY(tag_id) REFERENCES tags(id)
);


CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


CREATE TABLE comments_tags (
    comment_id INT,
    tag_id INT,
    PRIMARY KEY(comment_id, tag_id),
    FOREIGN KEY(comment_id) REFERENCES comments(id),
    FOREIGN KEY(tag_id) REFERENCES tags(id)
);


CREATE TABLE companies (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150),
    is_active BOOLEAN DEFAULT TRUE,
    country VARCHAR(100),
    continent VARCHAR(50)
);


CREATE TABLE companies_users (
    company_id INT,
    user_id INT,
    salary DECIMAL(10,2),
    devise VARCHAR(5),
    user_job VARCHAR(100),
    PRIMARY KEY(company_id, user_id),
    FOREIGN KEY(company_id) REFERENCES companies(id),
    FOREIGN KEY(user_id) REFERENCES users(id)
);


CREATE TABLE jobs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    median_salary DECIMAL(10,2)
);


CREATE TABLE devise (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(10),
    symbole VARCHAR(5)
);


INSERT INTO users (firstname, lastname, email, password, is_verified) VALUES
('Alice','Dupont','alice@test.com','pass123',TRUE),
('Bob','Martin','bob@test.com','pass456',FALSE),
('Charlie','Durand','charlie@test.com','pass789',TRUE);


INSERT INTO posts (user_id, title, content) VALUES
(1,'Hello World','Premier post'),
(2,'Hello SQL','Test de la base'),
(3,'Hello Docker','Contenu Docker');


INSERT INTO comments (user_id, post_id, content) VALUES
(1,1,'Super article !'),
(2,1,'Merci pour le partage.'),
(3,2,'Très intéressant !');


INSERT INTO tags (name) VALUES ('Tech'),('SQL'),('Tutorial'),('Docker');


INSERT INTO posts_tags (post_id, tag_id) VALUES
(1,1),(1,2),(2,2),(2,3),(3,1),(3,4);


INSERT INTO categories (name) VALUES ('Tuto'),('News');


INSERT INTO comments_tags (comment_id, tag_id) VALUES
(1,1),(2,2),(3,4);


INSERT INTO companies (name,is_active,country,continent) VALUES
('SuperTech',TRUE,'USA','America'),
('DevCorp',TRUE,'France','Europe');


INSERT INTO companies_users (company_id,user_id,salary,devise,user_job) VALUES
(1,1,35000,'€','Developer'),
(2,2,28000,'€','Designer'),
(1,3,40000,'€','DevOps');


INSERT INTO jobs (name,median_salary) VALUES ('Developer',40000),('Designer',30000),('DevOps',45000);


INSERT INTO devise (name,symbole) VALUES ('Euro','€'),('Dollar','$');

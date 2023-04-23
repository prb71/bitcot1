-- example data

-- CREATE DATABASE IF NOT EXISTS mydb;
CREATE TABLE IF NOT EXISTS mydb.users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT(3) NOT NULL,
    country VARCHAR(50) NOT NULL,
    job VARCHAR(50) NOT NULL
);
INSERT IGNORE INTO mydb.users (id, name, age, country, job) VALUES (NULL, 'pavan', 26, 'india', 'devops');
INSERT IGNORE INTO mydb.users (id, name, age, country, job) VALUES (NULL, 'nathan', 27, 'netherlands', 'developer');
INSERT IGNORE INTO mydb.users (id, name, age, country, job) VALUES (NULL, 'adam', 28, 'Australia', 'tester');
INSERT IGNORE INTO mydb.users (id, name, age, country, job) VALUES (NULL, 'chris', 35, 'united states', 'Team Lead');

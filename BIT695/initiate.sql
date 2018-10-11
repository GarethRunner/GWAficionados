CREATE DATABASE worg;

CREATE TABLE Players (
id INT(3) AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30) NOT NULL,
surname VARCHAR(30) NOT NULL,
email VARCHAR(50) NOT NULL,
phone VARCHAR(15) NOT NULL);

CREATE TABLE Board_games (
tid INT(4) AUTO_INCREMENT PRIMARY KEY,
game VARCHAR(20) NOT NULL,
id INT(3) NOT NULL,
position VARCHAR(10) NOT NULL,
notes VARCHAR(200),
eventdate DATE NOT NULL,
event VARCHAR(30) NOT NULL,
FOREIGN KEY (id) REFERENCES Players(id) ON DELETE CASCADE);

CREATE TABLE Games_assigned (
id INT(3) AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30) NOT NULL,
surname VARCHAR(30) NOT NULL,
email VARCHAR(50) NOT NULL,
phone VARCHAR(15) NOT NULL);

CREATE TABLE Schedule (
id INT(3) AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30) NOT NULL,
surname VARCHAR(30) NOT NULL,
email VARCHAR(50) NOT NULL,
phone VARCHAR(15) NOT NULL);

CREATE TABLE Scoring (
id INT(3) AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30) NOT NULL,
surname VARCHAR(30) NOT NULL,
email VARCHAR(50) NOT NULL,
phone VARCHAR(15) NOT NULL);

INSERT INTO Players (name, surname, email, phone)
VALUES ('Michael', 'Jones', 'mj@thebeast.com', '094545454'),
('Cindy', 'Crawford', 'cindy@myhero.govt.au', '071239876'),
('Tony', 'Montebello', 'tony@gmail.com', '061239876'),
('Wayne', 'Middleditch', 'wayne@myob.co.nz', '041239876'),
('Anthony', 'Banderas', 'ab@thenutter.co.ua', '022239876'),
('Shane', 'Digeradoo', 'shdig@gmail.com', '027523987633'),
('Amazon', 'Queen', 'kb@ford.co.nz', '021654987');

INSERT INTO Board_games (game, id, position, eventdate, event)
VALUES ('Monopoly', '1', '1st', '2016-11-11', 'The Roar'),
('Monopoly', '3', '2nd', '2007-10-20', 'Labour Weekend'),
('Monopoly', '6', '3rd', '2007-10-20', 'Labour Weekend'),
('Risk', '7', '3rd', '1986-01-01', 'New Year'),
('Risk', '5', '2nd', '2000-06-19', 'Winter Bash'),
('Risk', '6', '1st', '2018-04-21', 'Easter 18');

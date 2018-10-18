CREATE DATABASE worg;

CREATE TABLE Players (
id INT(3) AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30) NOT NULL,
surname VARCHAR(30) NOT NULL,
email VARCHAR(50) NOT NULL,
phone VARCHAR(15) NOT NULL,
INDEX players_ind (name,surname));

CREATE TABLE Board_games (
tid INT(4) AUTO_INCREMENT PRIMARY KEY,
game VARCHAR(20) NOT NULL,
id INT(3) NOT NULL,
owner VARCHAR(60) NOT NULL, /*somehow concatenates name and surname via link to id*/
FOREIGN KEY (id) REFERENCES Players(id),
INDEX game_ind (game));

CREATE TABLE Games_assigned (
gid INT(3) AUTO_INCREMENT PRIMARY KEY,
game VARCHAR(20) NOT NULL,
name VARCHAR(30) NOT NULL,
FOREIGN KEY (game) REFERENCES Board_games(game) ON DELETE CASCADE,
FOREIGN KEY (name) REFERENCES Players(name) ON DELETE CASCADE,
INDEX playergames_ind (game,name));

CREATE TABLE Event_schedule (
eid INT(3) AUTO_INCREMENT PRIMARY KEY,
event VARCHAR(30) NOT NULL,
eventdate DATE NOT NULL,
venue VARCHAR(30) NOT NULL,
INDEX event_ind (event));

CREATE TABLE Scoring (
sid INT(3) AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30) NOT NULL,
game VARCHAR(20) NOT NULL,
score INT(3) NOT NULL,
event VARCHAR(30) NOT NULL,
id INT(3) NOT NULL,
eid INT(3) NOT NULL,
tid INT(3) NOT NULL,
FOREIGN KEY (id) REFERENCES Players(id) ON DELETE CASCADE,
FOREIGN KEY (eid) REFERENCES Event_schedule(eid) ON DELETE CASCADE,
FOREIGN KEY (tid) REFERENCES Board_games(tid) ON DELETE CASCADE,
INDEX scoring_ind (name,surname,game));

INSERT INTO Players (name, surname, email, phone)
VALUES ('Michael', 'Jones', 'mj@thebeast.com', '094545454'),
('Cindy', 'Crawford', 'cindy@myhero.govt.au', '071239876'),
('Tony', 'Montebello', 'tony@gmail.com', '061239876'),
('Wayne', 'Middleditch', 'wayne@myob.co.nz', '041239876'),
('Anthony', 'Banderas', 'ab@thenutter.co.ua', '022239876'),
('Shane', 'Digeradoo', 'shdig@gmail.com', '027523987633'),
('Amazon', 'Queen', 'kb@ford.co.nz', '021654987');

INSERT INTO Board_games (game, id, owner)
VALUES ('Monopoly', '1', 'Michael Jones'),
('Risk', '3', 'Tony Montebello'),
('Game of Thrones', '6', 'Shane Digeradoo'),
('Carcassonne', '7', 'Amazon Queen'),
('Settlers of Catan', '5', 'Anthony Banderas'),
('Diplomacy', '6', 'Shane Digeradoo');

INSERT INTO Games_assigned (name, game, id, tid)
VALUES ('Michael', 'Monopoly', '1', '1'),
('Cindy', 'Monopoly', '2', '1'),
('Tony', 'Risk', '3', '2'),
('Wayne', 'Risk', '4', '2'),
('Anthony', 'Game of Thrones', '5', '3'),
('Shane', 'Game of Thrones', '6', '3'),
('Amazon', 'Carcassonne', '7', '4'),
('Michael', 'Carcassonne', '1', '4'),
('Cindy', 'Settlers of Catan', '2', '5');

INSERT INTO Event_schedule (event, eventdate, venue)
VALUES ('The Roar', '2016-11-11', 'The Lodge'),
('Labour Weekend', '2007-10-20', 'The Whistle & Grunt'),
('New Year', '1986-01-01', 'The Lodge'),
('Winter Bash', '2000-06-19', 'The Lodge'),
('Easter 18', '2018-04-21', 'The Whistle & Grunt');

INSERT INTO Scoring (name, game, score, event, id, eid, tid)
VALUES ('Michael', 'Monopoly', '33', 'The Roar', '1', '1', '1'),
('Michael', 'Carcassonne', '19', 'The Roar', '1', '1', '4'),
('Cindy', 'Monopoly', '39', 'New Year', '2', '3', '1'),
('Cindy', 'Settlers of Catan', '7', 'New Year', '2', '3', '5'),
('Tony', 'Risk', '29', 'Easter 18', '3', '5', '2'),
('Shane', 'Game of Thrones', '3', 'Easter 18', '6', '5', '3');

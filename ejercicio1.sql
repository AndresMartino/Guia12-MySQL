CREATE DATABASE superheroes;
USE superheroes;
SELECT DATABASE();
SELECT * FROM creador;
SELECT * FROM personajes;

CREATE TABLE creador(
	id_creador INT(11) NOT NULL,
    nombre_creador VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_creador)
);

CREATE TABLE personajes(
	id_personaje INT(11) NOT NULL,
    id_creador INT(11) NOT NULL,
    nombre_real VARCHAR(20) NOT NULL,
    personaje VARCHAR(20) NOT NULL,
    inteligencia INT(11) NOT NULL,
    fuerza VARCHAR(10) NOT NULL,
    velocidad INT(11) NOT NULL,
    poder INT(11) NOT NULL,
    aparicion INT(11) NOT NULL,
    ocupacion VARCHAR(30) NULL,
    PRIMARY KEY (id_personaje), 
    FOREIGN KEY (id_creador) REFERENCES creador(id_creador)
);
INSERT INTO creador VALUES (1,"Marvel");
INSERT INTO creador VALUES (2,"DC Comics");

INSERT INTO personajes VALUES(1,1,'Bruce Banner','HULK',160,'600mil',75,98,1962,'Fisico Nuclear');
INSERT INTO personajes VALUES(2,1,'Tony Stark','IRON MAN',170,'200mil',70,123,1963,'Ingeniero');
INSERT INTO personajes VALUES(3,1,'Thor Odinson','Thor',145,'infinita',100,235,1962,'Rey de Asgard');
INSERT INTO personajes VALUES(4,1,'Wanda Maximoff','BRUJA ESCARLATA',170,'100mil',90,345,1964,'Bruja');
INSERT INTO personajes VALUES(5,1,'Carol Danvers','Capitana Marvel',157,'250mil',85,128,1968,'Oficial de inteligencia');
INSERT INTO personajes VALUES(6,1,'Thanos','THANOS',170,'infinita',40,306,1973,'Adorador de la muerte');
INSERT INTO personajes VALUES(7,1,'Peter Parker','SPIDERMAN',165,'25mil',80,74,1962,'Fotografo');
INSERT INTO personajes VALUES(8,1,'Steve Rogers','CAPITAN AMERICA',145,'600',45,60,1941,'Oficial Federal');
INSERT INTO personajes VALUES(9,1,'Bobby Drake','ICE MAN',140,'2mil',64,122,1963,'Contador');
INSERT INTO personajes VALUES(10,2,'Barry Allen','FLASH',160,'10mil',120,168,1956,'Cientifico Forense');
INSERT INTO personajes VALUES(11,2,'Bruce Wayne','BATMAN',170,'500',32,47,1939,'Hombre deNegocios');
INSERT INTO personajes VALUES(12,2,'Clarck Kent','SUPERMAN',165,'infinita',120,182,1948,'Reportero');
INSERT INTO personajes VALUES(13,2,'Diana Prince','MUJER MARAVILLA',160,'infinita',95,127,1949,'Princesa Guerrera');

UPDATE personajes set aparicion=1938 where id_personaje=12;
DELETE FROM personajes WHERE id_personaje=10;
DROP DATABASE superheroes;
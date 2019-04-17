CREATE TABLE `typos` (
	`id`       INTEGER NOT NULL PRIMARY KEY,
  `url`      TEXT NOT NULL,
  `contextb` TEXT NOT NULL,
  `typo`     TEXT NOT NULL,
  `contexta` TEXT NOT NULL,
  `time`     TEXT NOT NULL,
  `user`     TEXT NOT NULL
);

INSERT INTO `typos` (`url`, `contextb`, `typo`, `contexta`, `time`, `user`) 
VALUES ('/kurzy/uvod-do-progr/pokus', 'Když jde malý ', 'bobr', ' spát', '25.4.2019 16:32', 'Pokusnik');
INSERT INTO `typos` (`url`, `contextb`, `typo`, `contexta`, `time`, `user`) 
VALUES ('/kurzy/uvod-do-progr/pokus', 'Když jde malý ', 'bobr2', ' spát', '25.4.2019 16:32', 'Pokusnik');
INSERT INTO `typos` (`url`, `contextb`, `typo`, `contexta`, `time`, `user`) 
VALUES ('/kurzy/uvod-do-progr/pokus', 'Když jde malý ', 'bobr3', ' spát', '25.4.2019 16:32', 'Pokusnik');
INSERT INTO `typos` (`url`, `contextb`, `typo`, `contexta`, `time`, `user`) 
VALUES ('/kurzy/uvod-do-progr/pokus', 'Když jde malý ', 'bobr4', ' spát', '25.4.2019 16:32', 'Pokusnik');
--INSERT INTO Idea VALUES ("Зачет по бд", "А что если не прийти?");
INSERT INTO Question VALUES (1, "Как тебе идея поработать?");
INSERT INTO Question VALUES (2, "Напряженный сегодня день?");


INSERT INTO Idea VALUES(1, "КР по алгему", "Хорошая тема прорешать прошлый год", "2018-01-17 10:00:00");
INSERT INTO Idea VALUES(2, "Зачет по бд", "А что если не прийти?", "2018-05-19 10:00:00");
INSERT INTO Idea VALUES(3, "Собес в Яндекс", "А что если не прийти?", "2018-05-17 12:00:00");
INSERT INTO Idea VALUES(4, "КР по матану", "А что если не прийти?", "2018-04-17 10:00:00");
INSERT INTO Idea VALUES(5, "КР по матану", "Надо взять у Жени тетрадь и сдать как свою", "2017-05-17 10:00:00");
INSERT INTO Idea VALUES(6, "КР по алгему", "Хорошая тема прорешать прошлый год", "2018-05-17 10:54:00");

INSERT INTO Tracking VALUES (1, "lol", 1, "2018-05-19 10:00:00", "2018-05-19 11:00:00", NULL, 1, 1);
INSERT INTO Tracking VALUES (2, "lol", 1, "2018-05-19 10:00:00", "2018-06-19 11:00:00", NULL, 1, NULL);
INSERT INTO Tracking VALUES (3, "lol", 1, "2018-03-19 10:00:00", "2018-03-19 11:00:00", 1, 2, NULL);

INSERT INTO Event VALUES (1, "2018-05-19 10:00:00", "2018-05-19 11:00:00", "Meeting", NULL, 1, 1);
INSERT INTO Event VALUES (2, "2018-05-19 10:00:00", "2018-06-19 17:00:00", "DB", NULL, NULL, 1);
INSERT INTO Event VALUES (3, "2018-03-19 10:00:00", "2018-03-19 11:00:00", "Working on math", 1, 2, 2);
INSERT INTO Event VALUES (4, "2018-03-19 12:00:00", "2018-03-19 15:00:00", NULL, NULL, 2, 2);

INSERT INTO Task VALUES (1, NULL, "Do DB", NULL, "not completed", 1, 1);
INSERT INTO Task VALUES (2, 1, "Do exersizes", 'sql-ex', "completed", NULL, 1);

INSERT INTO Service VALUES (1, 'Telegram', 100);
INSERT INTO Service VALUES (2, 'VK', 150);

INSERT INTO Subscription VALUES (1, 123, 1, 'STD', 1);
INSERT INTO Subscription VALUES (2, 890, 2, 'VIP', 1);
INSERT INTO Subscription VALUES (3, 890, 1, 'VIP', 2);

INSERT INTO Account VALUES (1, 'hamta@yandex.ru', '12345');
INSERT INTO Account VALUES (2, 'garnovyd@gmail.com', 'IloveDB');

INSERT INTO UserAnswer VALUES (1, 1, 1, 1, "2018-05-17 09:00:00");
INSERT INTO UserAnswer VALUES (2, 1, 2, 2, "2018-05-17 09:50:00");
INSERT INTO UserAnswer VALUES (3, 2, 1, 3, "2018-05-17 10:50:00");

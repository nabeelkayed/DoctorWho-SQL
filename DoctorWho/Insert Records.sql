INSERT INTO tblAuthor  
VALUES
('Nabeel'),
('Kayed'),
('Ahmad'),
('samer'),
('sameer');

INSERT INTO tblEnemy
VALUES
('Nabeel','kayed'),
('Kayed','nabeel'),
('Ahmad','Samer'),
('Samer','Ahmad'),
('Sameer','Samer');

INSERT INTO tblCompanion
VALUES
('Nabeel','kayed'),
('Kayed','nabeel'),
('Ahmad','Samer'),
('Samer','Ahmad'),
('Sameer','Samer');

INSERT INTO tblDoctor
VALUES
(1,'Nabeel','20101210','20101210','20101215'),
(12,'Kayed','20101211','20101212','20101216'),
(123,'Ahmad','20101212','20101214','20101220'),
(1234,'Samer','20101213','20101219','20101225'),
(12345,'Sameer','20101214','20101217','20101229');


INSERT INTO tblEpisode
VALUES
(1, 1,'A','EP1','20101210',1,5,'n1'),
(12, 21,'B','EP2','20101212',1,5,'n2'),
(123, 321,'C','EP3','20101214',2,4,'n3'),
(1234, 4321,'D','EP4','20101219',2,4,'n4');

INSERT INTO tblEpisode
(SeriesNumber, EpisodNumber, EpisodeType, Title, EpisodeDate, AuthorId, Nots) 
VALUES
(12345, 54321,'E','EP5','20101217',3,'n5');

INSERT INTO tblEpisodeEnemy
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(1, 1);



INSERT INTO tblEpisodeCompanion
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 3),
(5, 5),
(1, 1);





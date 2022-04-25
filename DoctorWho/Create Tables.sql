CREATE TABLE tblEnemy (
    EnemyId INT PRIMARY KEY IDENTITY (1, 1),
    EnemyName VARCHAR (50) NOT NULL,
    EnemyDescription VARCHAR (200),
);

CREATE TABLE tblAuthor (
    AuthorId INT PRIMARY KEY IDENTITY (1, 1),
    AuthorName VARCHAR (50) NOT NULL,
);

CREATE TABLE tblDoctor (
    DoctorId INT PRIMARY KEY IDENTITY (1, 1),
    DoctorNumber INT NOT NULL,
    DoctorName VARCHAR (50) NOT NULL ,
	BirthDate DATE,
    FirstEpisodeDate DATE,
    LastEpisodeDate DATE,
);

CREATE TABLE tblEpisode (
    EpisodeId INT PRIMARY KEY IDENTITY (1, 1),
    SeriesNumber INT NOT NULL,
    EpisodNumber INT NOT NULL,
	EpisodeType VARCHAR (50) NOT NULL,
    Title VARCHAR (50),
    EpisodeDate DATE,
	AuthorId INT ,
    DoctorId INT ,
    Nots VARCHAR (500),
	CONSTRAINT FK_AuthorId FOREIGN KEY (AuthorId)
    REFERENCES tblAuthor (AuthorId)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION,
	CONSTRAINT FK_DoctorId FOREIGN KEY (DoctorId)
    REFERENCES tblDoctor (DoctorId)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION

);

CREATE TABLE tblEpisodeEnemy (
    EpisodeEnemyId INT PRIMARY KEY IDENTITY (1, 1),
    EpisodeId INT NOT NULL,
    EnemyId INT NOT NULL,
	CONSTRAINT FK_EnemyId FOREIGN KEY (EnemyId)
    REFERENCES tblEnemy (EnemyId)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION,
	CONSTRAINT FK_EpisodeId FOREIGN KEY (EpisodeId)
    REFERENCES tblEpisode (EpisodeId)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
);

CREATE TABLE tblCompanion (
    CompanionId INT PRIMARY KEY IDENTITY (1, 1),
    CompanionName VARCHAR (50) NOT NULL,
    WhoPlayed VARCHAR (50) NOT NULL,
);

CREATE TABLE tblEpisodeCompanion (
    EpisodeCompanionId INT PRIMARY KEY IDENTITY (1, 1),
    EpisodeId INT NOT NULL,
    CompanionId INT NOT NULL,
	CONSTRAINT FK_EpisodeId_1 FOREIGN KEY (EpisodeId)
    REFERENCES tblEpisode (EpisodeId)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION,
	CONSTRAINT FK_CompanionId FOREIGN KEY (CompanionId)
    REFERENCES tblCompanion (CompanionId)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
)
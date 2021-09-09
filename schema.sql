----------  Table 1 -------------

CREATE TABLE HostCity (
    id              INT               NOT NULL,
    City            VARCHAR(20)       NOT NULL,
    Year            INT               NOT NULL,
    PRIMARY KEY (Year)
);
	 
----------  Table 2 -------------

CREATE TABLE Events (
    id          INT               NOT NULL,
    Sport       VARCHAR(50) ,
	Discipline 	VARCHAR(50),
	PRIMARY KEY (Discipline)

);

----------  Table 3 -------------


CREATE TABLE Countries (
    id              INT               NOT NULL,
    Name            VARCHAR(50)       NOT NULL,
    NOC             VARCHAR(50)       NOT NULL,
    PRIMARY KEY (NOC)
);

----------  Table 4 -------------

CREATE TABLE Medals (
    id              INT               NOT NULL,
    Year            INT               NOT NULL,
    Country         VARCHAR(50)       NOT NULL,
    Gold            INT               NOT NULL,
    Silver          INT               NOT NULL,
    Bronze          INT               NOT NULL,
    Total           INT               NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (Country)             REFERENCES Countries(NOC),
    FOREIGN KEY (Year)                REFERENCES HostCity(Year)
);

----------  Table 5 -------------

CREATE TABLE EventWinners (
    id              INT               NOT NULL,
    Year            INT               NOT NULL,
    Sport           VARCHAR(50)       NOT NULL,
    Discipline      VARCHAR(50)       NOT NULL,
    Event           VARCHAR(50)       NOT NULL,
    Athlete         VARCHAR(50)       NOT NULL,
    Gender          VARCHAR(50)       NOT NULL,
    Country         VARCHAR(50)       NOT NULL,
    Event_gender    VARCHAR(50)       NOT NULL,
    Medal           VARCHAR(10)       NOT NULL,
    FOREIGN KEY (Year)                REFERENCES HostCity(Year),
    FOREIGN KEY (Discipline) 		  REFERENCES Events(Discipline),
    FOREIGN KEY (Country)             REFERENCES Countries(NOC)	
);

----------  Table 6 -------------

CREATE TABLE MultiWinnningAthletes (
    Rank            INT ,
    Athlete         VARCHAR(50),
    Nation          VARCHAR(50),
    Sport           VARCHAR(50),
    Years           VARCHAR(15),
    Games           VARCHAR(50),
    Gender          VARCHAR(10),
    Gold            INT               NOT NULL,
    Silver          INT               NOT NULL,
    Bronze          INT               NOT NULL,
    Total           INT               NOT NULL,
    FOREIGN KEY (Nation)              REFERENCES Countries(NOC),
    FOREIGN KEY (Sport) REFERENCES Events(Discipline)
);


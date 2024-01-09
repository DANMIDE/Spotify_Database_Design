CREATE TABLE Artist (
ArtistID INT primary key,
);

CREATE TABLE TRACK(
TRACKID INT primary key,
TrackTitle VARCHAR (100) NOT NULL,
TrackDate DATE,
TrackGenre VARCHAR (100),
TrackDuration TIME,
ArtistID INT foreign key references Artist(ArtistID),
);

CREATE TABLE Playlist (
PlaylistID INT primary key,
);

CREATE TABLE CONTAIN(
TrackID INT foreign key references Track(TrackID),
PlaylistID INT foreign key references Playlist(PlaylistID),
);

CREATE TABLE UserID(
UserID INT primary key,
);

CREATE TABLE LISTEN (
PlaylistID INT foreign key references Playlist(PlaylistID),
UserID INT foreign key references UserID(UserID),
TrackGenre VARCHAR (100),
TrackDuration TIME,
TrackLocation VARCHAR (100),
);

CREATE TABLE Followers(
FollowersID INT primary key,
);

CREATE TABLE Follow(
ArtistID INT foreign key references Artist(ArtistID),
FollowersID INT foreign key references Followers(FollowersID),
FollowDate DATE,
);

CREATE TABLE Album (
AlbumID INT primary key,
);

CREATE TABLE Compiles (
ArtistID INT foreign key references Artist(ArtistID),
AlbumID INT foreign key references Album(AlbumID),
);

CREATE TABLE PLAY(
UserID INT foreign key references UserID(UserID),
AlbumID INT foreign key references Album(AlbumID),
PlayDate DATE,
PlayLocation VARCHAR(100),
PlayTime TIMESTAMP,
);


--insert values into the TABLE TRACK
SELECT * FROM TRACK 

INSERT INTO TRACK values
(1221, 'WFM', '2000-06-12', 'ROCK', '02:55:04', 121 ),
(1222, 'CHARM', '2001-02-01','AFROBEAT', '02:54:12', 122 ),
(1223, 'D&G', '2002-12-04','HIP-HOP', '03:32:00', 123 ),
(1224, 'BEEP BEEP', '2003-10-06','RAP', '01:32:00', 124 ),
(1225, 'TONIGHT', '2004-03-27','R&B', '02:10:05', 125 );


--insert values into the TABLE CONTAIN
SELECT * FROM CONTAIN 

INSERT INTO CONTAIN VALUES
(1221,235),
(1222,236),
(1223,237),
(1224,238),
(1225,239);
  



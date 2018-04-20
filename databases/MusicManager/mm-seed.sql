use MusicManager
GO

--insert into Genres
--(Id,Name) values
--(1,N'PopRock'),
--(2,N'Pop'),
--(3,N'Rock'),
--(4,N'Rnb')

--insert into ArtistTypes
--(Id,Name) values
--(1,N'SoloArtist'),
--(2,N'Band')

--insert into Artists
--(Id,FullName,ArtistTypeId)values
--(1, N'Metallica', 2),
--(2, N'Iron Maiden', 2),
--(3, N'Rammstein',2),
--(4, N'Coldplay', 2),
--(5, N'Beyonce', 1)

--insert into Albums
--(Id,ArtistId,Name,GenreId,Year) values
--(1, 1, N'Metallica', 1, 1991),
--(2, 1, N'Ride The Lightning', 1, 1984),
--(3, 2, N'Brave New World', 1, 2000),
--(4, 2, N'Seventh Son of a Seventh Son', 1, 1988),
--(5, 3, N'MUTTER', 1, 2001),
--(6, 3, N'RosenRot', 1, 2005),
--(7, 4, N'Mylo Xyloto', 1, 2011),
--(8, 5, N'Lemonade', 4, 2016)

--insert into Songs
--(Id,AlbumId,Name,Duration) values
--(1, 1,N'Enter Sandman', 5 * 60 + 31								),
--(2, 1,N'Sad But True', 5 * 60 + 24								),
--(3, 1,N'Holier Than Thou', 3 * 60 + 47							),
--(4, 1,N'The Unforgiven', 6 * 60 + 27							),
--(5, 1,N'Wherever I May Roam', 6 * 60 + 44						),
--(6, 1,N'Don''t Tread on Me', 4 * 60 + 0							),
--(7, 1,N'Through the Never', 4 * 60 + 4							),
--(8, 1,N'Nothing Else Matters', 6 * 60 + 28						),
--(9, 1,N'Of Wolf and Man', 4 * 60 + 16							),
--(10, 1,N'The God That Failed', 5 * 60 + 8						),
--(11, 1,N'My Friend of Misery', 6 * 60 + 49						),
--(12, 1,N'The Struggle Within', 3 * 60 + 53						),
--(13, 2,N'Fight Fire with Fire', 4 * 60 + 44						),
--(14, 2,N'Ride the Lightning', 6 * 60 + 36						),
--(15, 2,N'For Whom the Bell Tolls', 5 * 60 + 9					),
--(16, 2,N'Fade to Black', 6 * 60 + 57							),
--(17, 2,N'Trapped Under Ice', 4 * 60 + 4							),
--(18, 2,N'Escape', 4 * 60 + 23									),
--(19, 2,N'Creeping Death', 6 * 60 + 36							),
--(20, 2,N'The Call of Ktulu', 8 * 60 + 53						),
--(21, 3,N'The Wicker Man', 4 * 60 + 35							),
--(22, 3,N'Ghost of the Navigator', 6 * 60 + 50					),
--(23, 3,N'Brave New World', 6 * 60 + 18							),
--(24, 3,N'Blood Brothers', 7 * 60 + 14							),
--(25, 3,N'The Mercenary', 4 * 60 + 42							),
--(26, 3,N'Dream of Mirrors', 9 * 60 + 21							),
--(27, 3,N'The Fallen Angel', 4 * 60 + 0							),
--(28, 3,N'The Nomad', 9 * 60 + 5									),
--(29, 3,N'Out of the Silent Planet', 6 * 60 + 25					),
--(30, 3,N'The Thin Line Between Love and Hate', 8 * 60 + 27		),
--(31, 4,N'Moonchild', 5 * 60 + 41								),
--(32, 4,N'Infinite Dreams', 6 * 60 + 9							),
--(33, 4,N'Can I Play with Madness', 3 * 60 + 31					),
--(34, 4,N'The Evil That Men Do', 4 * 60 + 34						),
--(35, 4,N'Seventh Son of a Seventh Son', 9 * 60 + 53				),
--(36, 4,N'The Prophecy', 5 * 60 + 6								),
--(37, 4,N'The Clairvoyant', 4 * 60 + 27							),
--(38, 4,N'Only the Good Die Young', 4 * 60 + 42					),
--(39, 5,N'Mein Herz Brennt', 4 * 60 + 39							),
--(40, 5,N'Mein Herz Brennt', 3 * 60 + 36							),
--(41, 5,N'Sonne', 4 * 60 + 32									),
--(42, 5,N'Ich Will', 3 * 60 + 37									),
--(43, 5,N'Feuer Frei!', 3 * 60 + 11								),
--(44, 5,N'Mutter', 4 * 60 + 32									),
--(45, 5,N'Spieluhr', 4 * 60 + 46									),
--(46, 5,N'Zwitter', 4 * 60 + 17									),
--(47, 5,N'Rein Raus', 3 * 60 + 9									),
--(48, 5,N'Adios', 3 * 60 + 49									),
--(49, 5,N'Nebel', 4 * 60 + 54									),
--(50, 6,N'Benzin', 3 * 60 + 46									),
--(51, 6,N'Mann Gegen Mann', 3 * 60 + 50							),
--(52, 6,N'Rosenrot', 3 * 60 + 54									),
--(53, 6,N'Spring', 5 * 60 + 24									),
--(54, 6,N'Wo Bist Du', 3 * 60 + 55								),
--(55, 6,N'Stirb Nicht Vor Mir(Don''t Die Before I Do)', 4 * 60 + 5),
--(56, 6,N'Zerstören', 5 * 60 + 28						),
--(57, 6,N'Hilf Mir', 4 * 60 + 43							),
--(58, 6,N'Te Quiero Puta!', 3 * 60 + 55					),
--(59, 6,N'Feuer und Wasser', 5 * 60 + 17					),
--(60, 6,N'Ein Lied', 3 * 60 + 43							),
--(61, 7,N'Mylo Xyloto', 0 * 60 + 43						),
--(62, 7,N'Hurts Like Heaven', 4 * 60 + 2					),
--(63, 7,N'Paradise', 4 * 60 + 37							),
--(64, 7,N'Charlie Brown', 4 * 60 + 45					),
--(65, 7,N'Us Against the World', 3 * 60 + 59				),
--(66, 7,N'M.M.I.X.', 0 * 60 + 48							),
--(67, 7,N'Every Teardrop Is a Waterfall', 4 * 60 + 0		),
--(68, 7,N'Major Minus', 3 * 60 + 30						),
--(69, 7,N'U.F.O.', 2 * 60 + 17							),
--(70, 7,N'Princess of China', 3 * 60 + 59),
--(71, 7,N'Up in Flames', 3 * 60 + 13),
--(72, 7,N'A Hopeful Transmission', 0 * 60 + 33),
--(73, 7,N'Don''t Let It Break Your Heart', 3 * 60 + 53),
--(74, 7,N'Up with the Birds', 3 * 60 + 47),
--(75, 8,N'UNKNOWN TRACK01', 3 * 60 + 15),
--(76, 8,N'UNKNOWN TRACK02', 3 * 60 + 41),
--(77, 8,N'UNKNOWN TRACK03', 3 * 60 + 53),
--(78, 8,N'UNKNOWN TRACK04', 3 * 60 + 52),
--(79, 8,N'UNKNOWN TRACK05', 4 * 60 + 20),
--(80, 8,N'UNKNOWN TRACK06', 4 * 60 + 47),
--(81, 8,N'UNKNOWN TRACK07', 3 * 60 + 57),
--(82, 8,N'UNKNOWN TRACK08', 3 * 60 + 2 ),
--(83, 8,N'UNKNOWN TRACK09', 1 * 60 + 19),
--(84, 8,N'UNKNOWN TRACK10', 4 * 60 + 49),
--(85, 8,N'UNKNOWN TRACK11', 5 * 60 + 21),
--(86, 8,N'UNKNOWN TRACK12', 3 * 60 + 25)

select* from Artists
select* from Albums
select* from Songs
select* from ArtistTypes
select* from Genres
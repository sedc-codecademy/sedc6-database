
--how many songs are there in total
--select * from Songs
--select top(2) * from Songs
--select top(2) Id,Name from Songs
--select top(2) s.Id, s.Name from Songs as s

--list the songs that start with letter 'a' (case insensitive)
--select * from Songs as s
--where s.Name like 'a%'

--count how many records have desctiptions
--select count(s.Description) 
--from Songs as s

-- how many Songs start with the letter 'a' (case insensitive)
--count how many records pass the filter

--select count(*)
--from Songs as s
--where s.Name like 'a%'
--#######################################################
-- how many artists end with letter 'a' (case insensitive)
--select * from Artists as a
--where a.Name like '%a'
-- whats the name of the song with longest duration
--select top(1) s.Name from songs as s
--order by s.Duration desc
-- whats the total Duration of all Songs
--select sum(s.Duration)
--from Songs as s
-- how many albums have Songs longer than 300 seconds

--select s.Id as SongId, s.AlbumId as SongsAlbumId,
-- s.Name as SongName,
-- a.Id as AlbumId, a.Name as AlbumName  
--from Songs as s
--join Albums as a
--	on s.AlbumId = a.Id
--where s.Duration>300

--select count(distinct(a.id))
--from Songs as s
--join Albums as a
--	on s.AlbumId = a.Id
--where s.Duration>300

-- print the names of the artists,
-- that have more than one album of PopRock genre

--select top(1) Id from Genres as g
--where g.Name like 'popRock'

--select art.Name from Artists as art
--where art.Id in
--(select a.ArtistId from Albums as a
--where a.GenreId  in (select Id from Genres as g
--					where g.Name like 'popRock')
--group by a.ArtistId
--having count(a.Id) >1)

-- print the name of the album that has
-- highest Average duration of a song


--select a.Name From Albums as a
--where a.Id in 
--( select results.AlbumId
--	from (select top(1) s.AlbumId, Avg(s.Duration) as AverageSongsDuration
--			from Songs as s
--			group by s.AlbumId
--			order by AverageSongsDuration desc) as results)
-- how many characters has the song that has the shortest Duration

--select top(1) s.Name, LEN(s.Name)
--from Songs as s
--order by s.Duration

-- print the name and the genre of the album
-- that has most songs
--SELECT TOP(1) a.Name, g.Name, COUNT(s.Id) as SongsCount 
--FROM Songs as s
--INNER JOIN Albums a
--ON a.Id = s.AlbumId
--INNER JOIN Genres g
--ON g.Id = a.GenreId
--GROUP BY s.AlbumId, a.Name, g.Name
--ORDER BY SongsCount DESC


-- print the name of the artist that has most songs
--select top(1) art.Name
--from Songs s 
--inner join Albums alb on s.AlbumId = alb.Id
--inner join Artists art on art.Id = alb.ArtistId
--group by art.Id, art.Name
--order by count(s.Id) desc
--print all songs of Metallica

complete this
--select art.Id as ArtistId,
--		art.Name as ArtistName,
--		alb.Id as AlbumId,
--		alb.Name as AlbumName,
--		s.Id as SongId,
--		s.Name as SongName
-- from Artists as art
--inner join Albums as alb
--	on art.Id = alb.ArtistId
--inner join Songs as s
--	on alb.Id = s.AlbumId

-- print the type of the artist 
--that has most albums published before year 2000


-- print the average song duration, of the album that has most songs


-- print the longest song duration of the album that has least songs
-- print the name of the album that has most songs that contain letter 'a' in the name
-- print the name of the artist that has most songs that end wit letter 'd'

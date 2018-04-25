-- print the type of the artist 
--that has most albums published before year 2000

select top(1) artt.Name
from Albums as a
inner join Artists as art on art.Id = a.ArtistId
inner join ArtistTypes as artt on artt.Id = art.ArtistTypeId
where a.Year < 2000
group by a.ArtistId, art.ArtistTypeId, artt.Name
order by count(a.Id) desc


-- print the average song duration, 
--of the album that has most songs

select top(1) s.AlbumId, avg(s.Duration)
from Songs as s
group by s.AlbumId
order by count(s.Id) desc


-- print the longest song duration of the album 
-- that has least songs

select top(1) 
		s.AlbumId, 
		count(s.Id) as SongCount, 
		max(s.Duration) as MaxDuration
from Songs as s
group by s.AlbumId
order by songCount asc

select * 
from albums as alb
where alb.Id in (select top(1) 
							s.AlbumId
					from Songs as s
					group by s.AlbumId
					order by count(s.Id) asc)

-- print the name of the album that has most songs
-- that contain letter 'a' in the name



-- print the name of the artist that has most songs
-- that end wit letter 'd'
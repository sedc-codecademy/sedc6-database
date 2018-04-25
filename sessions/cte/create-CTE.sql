with AlbumsFiltered
as 
(
select s.AlbumId, 
		count(s.Id) as SongCount,
		max(s.Duration) as MaxDuration
		from Songs as s
		group by s.AlbumId
)
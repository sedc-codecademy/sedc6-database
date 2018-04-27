create procedure spEmptyAlbums
as 
begin
select *
from Albums a
where a.Id not in 
(select distinct(s.AlbumId) from Songs s)
end

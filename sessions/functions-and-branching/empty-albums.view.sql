--create view that will show all empty albums(without any song)

create view EmptyAlbums
as
select a.*
from Albums a
left join Songs s on a.Id = s.AlbumId
where s.Id is null;

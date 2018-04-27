create function CountSongs(@artistId int)
returns int
as
begin
	declare @result int;
	select @result = COUNT(s.id)
	from Songs s
	inner join Albums a on a.Id = s.AlbumId
	where a.ArtistId = @artistId;
	return @result;
end

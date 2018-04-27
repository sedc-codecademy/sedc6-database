--Create function that will have the functionality of a ToStrin() method in other programming languages

--SongToString(int songId)
--should return "[Id], [Name], [Duration], [AlbumName], [ArtistName]"

create function SongToString(@songId int)
returns nvarchar(200)
as
begin
	declare @result nvarchar(200);
	select @result = CAST(s.Id as nvarchar) + ', ' + s.Name + 
		', ' + CAST(s.Duration as nvarchar) + ', ' + a.Name + ', ' 
		+ art.FullName
	from Songs s
	inner join Albums a on a.Id = s.AlbumId
	inner join Artists art on art.Id = a.ArtistId
	where s.Id = @songId;
	return @result;
end

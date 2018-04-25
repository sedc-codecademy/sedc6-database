create procedure CreateAlbum(
    @name nvarchar(max),
    @year int,
    @artistName nvarchar(max), 
    @genreName nvarchar(max),
    @error nvarchar(max) output)
as
begin
if(exists((select * from Albums as alb where alb.Name like @name)))
	set @error = 'Album already exists';
else if(not (@year > 0 and @year < year(getutcDate())))
	set @error = 'Invalid date';
else if(not exists(select * from Artists as art where art.FullName like @artistName))
	set @error = 'Artist not found';
else if(not exists(select * from Genres as g where g.Name like @genreName))
	set @error = 'Genre not found';
else
	insert into Albums(Name, Year, GenreId, ArtistId)
	values (
	@name,
	@year,
	(select top(1) g.Id from Genres as g where g.Name like @genreName),
	(select top(1) a.Id from Artists as a where a.FullName like @artistName))
end

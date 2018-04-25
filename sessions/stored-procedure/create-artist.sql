--create procedure that will insert new Artist
-- the procedure will accept as input two parameters 
-- artist name(nvarchar), artist type (nvarchar)
-- one out parameter - error

create procedure CreateArtist(
	@name nvarchar(MAX),
	@type nvarchar(MAX),
	@error nvarchar(MAX) output)
as
begin
if(not exists(select *from ArtistTypes as at where at.Name =@type))
	set @error = 'ArtistType not found';
else if(exists(select * from Artists as ar where ar.FullName like @name))
	set @error = 'Artist already exists';
else
	insert into Artists(FullName, ArtistTypeId)
	values (@name,(select at.Id from ArtistTypes as at where at.Name like @type));
end
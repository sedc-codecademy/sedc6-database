create procedure CreateArtistType
(
	@name nvarchar(50),
	@error nvarchar(100) output 
)
as
begin
	if (EXISTS(select * from ArtistTypes at where at.Name = @name))
		SET @error = 'Artist type already exists';
	else
		insert into ArtistTypes (Name) values (@name)
end
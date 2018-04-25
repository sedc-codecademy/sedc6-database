declare @error nvarchar(100)
exec spCreateArtistType 'Big band 3', @error output
if (@error is null)
	select 'No error'
else
	select @error

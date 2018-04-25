declare @error nvarchar(MAX);
exec CreateArtist 'koki', 'Band', @error output;
select @error;

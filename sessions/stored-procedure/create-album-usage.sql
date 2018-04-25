declare @error nvarchar(max);
exec CreateAlbum 'Hardwired to Self-Destruct', 1990, 'Metallica', 'Some kind of Rock', @error output
select @error

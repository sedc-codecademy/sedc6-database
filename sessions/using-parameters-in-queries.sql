declare @param1 nvarchar
declare @param2 int

--escaping the quot(') character
set @param1 = ''';--'
set @param2 = 1

select * from Albums as a where a.Id like @param1 and a.GenreId = @param2

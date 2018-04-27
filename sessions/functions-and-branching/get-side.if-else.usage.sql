declare @res nvarchar(5) = dbo.GetSide('asd');
if(@res is null)
begin
	select 'invalid input'
end
else
begin
	select @res
end

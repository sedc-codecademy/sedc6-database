begin try
	declare @result int;
	set @result = cast('3d3' as int);
	select @result + 1;
end try
begin catch
declare @exception nvarchar(MAX) = '';
set @exception = @exception + error_number();
set @exception = @exception + ', message: ';
set @exception = @exception + error_message();
select @exception;
end catch
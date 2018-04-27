--create function GetSide(char(1))
--will return varchar(10)
-- for
-- s => South
-- n => North
-- w => West
-- e => East
-- else => NULL

create function GetSide(@charact char(1))
returns nvarchar(5)
as
begin
	declare @result nvarchar(10);
	select @result = 
		case @charact
			when 'e' then 'East'
			when 'w' then 'West'
			when 'n' then 'North'
			when 's' then 'South'
		else null
	end
	return @result
end

alter trigger UserCreated
on Artists after insert
as
begin
SET NOCOUNT ON;
declare @result nvarchar(max) = '';
select @result = @result + i.Name from INSERTED as i;
insert into EventLogs
(Message,Description,EventDateTime,EventName,[Log])
values
('Artist successfully created',
'some artist with name: '+ @result +' was inserted',
getutcdate(),'artist.created','some log');
end

select @@TRANCOUNT
begin transaction demo
	insert into Artists (Id, Name, ArtistTypeId)
	values(2070,'Demo', 2)
	select *
	from Artists
	select @@TRANCOUNT
rollback--commit
select @@TRANCOUNT

select *
from Artists
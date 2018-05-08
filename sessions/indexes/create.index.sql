create nonclustered 
index ArtistTypeName 
on Artists(Name)

select* from Artists as a
where 
a.Id > 15
and a.name like 'm%'
and a.ArtistTypeId = 3
 select* from Artists as a
where a.Id = 1
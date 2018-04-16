--SeLeCt * from AutHors

--select Authors.Name,Authors.Id    
--from AutHors


/*
ExampleFrom Linq2Sql
from a in authors
where a.Id == 1
select { a.Name, a.Id }
*/

--comparing integers
--select Authors.Name,Authors.Id    
--from AutHors
--where Authors.Id = 1

--comparing strings case in-sensitive
--select Authors.Name,Authors.Id    
--from AutHors
--where Authors.Name = 'jon sket'

--comparing strings case sensitive
--select Authors.Name,Authors.Id    
--from AutHors
--where Authors.Name = 'jon sket' COLLATE Latin1_General_CS_AS

--ends with example
--select Authors.Name,Authors.Id    
--from AutHors
--where Authors.Name like '%sket' 

--starts with example
--select Authors.Name,Authors.Id    
--from AutHors
--where Authors.Name like 'Jon%' COLLATE Latin1_General_CS_AS

--where in clause
--select Authors.Name,Authors.Id    
--from AutHors
--where Authors.Id in (1,2,5,6)

--select Authors.Name,Authors.Id    
--from AutHors
--where Authors.Name like 'jo%'
--or Authors.Name like'%e%'

--select Authors.Name,Authors.Id    
--from AutHors
--where Authors.Name in ('jon sket', 'scot allen')

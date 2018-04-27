begin try
	insert into Artists
	(id,Name,ArtistTypeId)
	values
	(2000,'dzevo',1)
	
	SELECT 'success'; 
end try
begin catch
	select ERROR_NUMBER() AS ErrorNumber  
       ,ERROR_MESSAGE() AS ErrorMessage
end catch

select * 
from AlbumsFiltered AS af
inner join Artists as art
	on art.Id = af.AlbumId

select a.FullName, dbo.CountSongs(a.Id) as NumberOfSongs
from Artists a
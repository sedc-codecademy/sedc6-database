# **Homework about procedures**
For all tables in the MusicManagement database Create the procedures using the folowing pattern:

## Read-write procedures
    Create<Entity_Name>
    Update<Entity_Name>
    Delete<Entity_Name>

## Read-only procedures
    Get<Entity_Name>
    GetFull<Entity_Name>
    
## **Create<Entity_Name>:**
    Should create a record in database for the given parameters.
    In "Artists" case, the name of the procedure would be "CreateArtist" and it will create a record in Artists table for the given parameters

## **Update<Entity_Name>:**
    Should update a record in database for the given parameters.
    In "Artists" case, the name of the procedure would be "UpdateArtist" and it will update a record in Artists table for the given parameters
        
## **Delete<Entity_Name>:**
    Should delete a record in database for the given Id.
    In "Artists" case, the name of the procedure would be "DeleteArtist" and it will delete a record from Artists table for the given Id

## **Get<Entity_Name>:**
     Should get a record in database for the given Id, in "Artists" case, the name of the procedure would be "GetArtist" and it will get a record from Artists table for the given Id

## **GetFull<Entity_Name>:**
    Should get a record in database for the given Id.
    In "Artists" case,  the name of the procedure would be "GetArtist" and it will get a record from Artists table for the given Id, and will additionally join with relations of the Artists table to get the Display Column of the relation, instead of displaying foreign key

### **GetFull Example:**
```sql
declare @error
exec GetFullArtist 1, @error
```
#### Should return:

| Id | FullName | ArtistType |
| :-: |:-:|:-:|
| 1 | Metallica | Rock |

#### Instead of 
| Id | FullName | ArtistTypeId |
| :-: |:-:|:-:|
| 1 | Metallica | 3 |

## You can backup the database and send the "*.bak" file, or send the ".sql" scripts in a zip file

## Bonus:

### Create views that will return all records as full records (similar to GetFull<Entity_Name> Procedures)


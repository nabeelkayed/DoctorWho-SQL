CREATE VIEW viewEpisodes
AS
select e.EpisodeId, d.DoctorName, a.AuthorName,
       (SELECT * from dbo.fnCompanions(e.EpisodeId)) as Companions , 
	   (SELECT * from dbo.fnEnemies(e.EpisodeId)) as Enemies
	   from tblEpisode e
INNER JOIN tblDoctor d 
        ON e.DoctorId  = d.DoctorId
INNER JOIN tblAuthor a 
        ON e.AuthorId = a.AuthorId

GO

select * from viewEpisodes;
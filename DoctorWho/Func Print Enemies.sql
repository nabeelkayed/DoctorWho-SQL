CREATE FUNCTION fnEnemies(@EpisodeId INT)
RETURNS TABLE AS
RETURN SELECT STRING_AGG(e.EnemyName, ', ') as EnemyName FROM tblEnemy e
	   INNER JOIN tblEpisodeEnemy ee 
	   ON e.EnemyId = ee.EnemyId 
       where ee.EpisodeId = @EpisodeId;
GO

SELECT * from dbo.fnEnemies(1);


 
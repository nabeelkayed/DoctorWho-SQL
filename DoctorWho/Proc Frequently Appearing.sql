CREATE PROCEDURE spSummariseEpisodes
AS BEGIN

SELECT TOP (3) CompanionId
  FROM tblEpisodeCompanion
  group by CompanionId
  order by COUNT(CompanionId) DESC;

 SELECT TOP (3) EnemyId
  FROM tblEpisodeEnemy
  group by EnemyId
  order by COUNT(EnemyId) DESC;

END;

EXEC spSummariseEpisodes;




 
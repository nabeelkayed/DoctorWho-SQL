CREATE FUNCTION fnCompanions(@EpisodeId INT)
RETURNS TABLE AS
RETURN SELECT STRING_AGG(c.CompanionName, ', ') as CompanionName FROM tblCompanion c
	   INNER JOIN tblEpisodeCompanion ec 
	   ON c.CompanionId = ec.CompanionId
       where ec.EpisodeId = @EpisodeId;
GO

SELECT * from dbo.fnCompanions(1);


DELETE c FROM tblCompanion c 
  LEFT JOIN tblEpisodeCompanion ec
  ON ec.CompanionId = c.CompanionId 
      WHERE ec.CompanionId IS NULL
UPDATE tblEpisode  
SET EpisodeType = EpisodeType + '_CANCELLED'  
WHERE DoctorId IS NULL;  
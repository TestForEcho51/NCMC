CREATE  TRIGGER checkForDuplicate 
BEFORE INSERT ON Movie
BEGIN
	SELECT 
		CASE 
			WHEN EXISTS (SELECT * 
						 FROM Movie 
						 WHERE NEW.name = Movie.name) 
			THEN 
				RAISE (ABORT, 'Movie already in DATABASE')
			END;
			
END;
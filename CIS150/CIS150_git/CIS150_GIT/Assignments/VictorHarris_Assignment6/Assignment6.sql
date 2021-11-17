SELECT
 m.name 'Movie Name', 
 m.year 'Year'
 FROM
 movie m
inner join actor a 
ON a.movie_id = m.id
INNER JOIN person p
ON p.id = a.actor_id
WHERE p.name is 'Geena Davis';


SELECT 
		min(Movie.runtime) 'Short',
		max(Movie.runtime) 'Long',
		avg(Movie.runtime) 'Average length'
		FROM Movie
		WHERE rating = 'R';
	
		
SELECT 
o.type 'Type of Oscar',
o.year 'Year',
m.name 'Movie Name'
FROM Oscar o
INNER JOIN person p 
ON o.person_id = p.id
JOIN Movie m
ON o.movie_id = m.id
WHERE p.name = 'Steven Spielberg';


SELECT 
pob 'City (EXLUDING BOROUGHS)',
COUNT() 'Number Of People'

 from Person p 
 WHERE p.pob IS NOT NULL
 GROUP BY p.pob
 HAVING count() >=50;


SELECT count() 'Number Of Movies Without Oscars'
FROM Movie as m
WHERE m.id NOT IN (SELECT movie_id FROM Oscar);


SELECT
	DISTINCT p.name	'Name',
	COUNT(a.movie_id) 'Number of Movies Acted'
	
FROM Person p

LEFT OUTER JOIN Actor a
ON a.actor_id = p.id
WHERE p.pob LIKE '%Sweden'
	GROUP BY a.actor_id
	ORDER BY 
		COUNT(a.movie_id),
p.name ASC;
		
		
SELECT COUNT() 'Number of R-Rated Film Directors' FROM
(
SELECT  DISTINCT d.director_id FROM  

movie m
INNER JOIN director d 
ON m.id =  d.movie_id

WHERE m.rating = 'R' 
);


UPDATE Movie 

SET rating = 'PG-13'

WHERE Movie.name LIKE 'Indiana Jones%' AND Movie.year = 1984;




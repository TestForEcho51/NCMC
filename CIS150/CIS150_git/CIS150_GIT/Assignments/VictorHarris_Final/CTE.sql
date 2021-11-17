WITH bornInNinetiesCTE AS (
SELECT  id,
name,
CAST(SUBSTR(dob, 1,4) AS INT) AS YOB

 FROM Person WHERE YOB BETWEEN 1990 and 1999
 )

SELECT n.name, COUNT(*) FROM bornInNinetiesCTE n
 INNER JOIN Actor a ON n.id = a.actor_id GROUP BY n.id
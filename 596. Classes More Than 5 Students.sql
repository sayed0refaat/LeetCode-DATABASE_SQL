SELECT class
FROM Courses 
GROUP BY class
HAVING COUNT(STUDENT) >= 5
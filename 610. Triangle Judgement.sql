
# IN THIS PROBLEM I learned the CASE and END 

SELECT * , CASE WHEN x+y>z AND y+z>x AND x+z>y THEN 'Yes'
ELSE 'No' END AS triangle
FROM Triangle

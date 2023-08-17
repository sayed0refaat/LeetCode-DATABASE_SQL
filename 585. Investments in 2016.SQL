# ITS GOOD TO SEARCH IN THE SOLUTION IN LEET TO FIND A QUERY TO LEARN FROM I WROTE A COMPLICATED QUERY THEN I FOUND THIS SIMPLE ONE ....
select ROUND(SUM(tiv_2016),2) AS tiv_2016 
from Insurance 
where tiv_2015 IN ( 
  select tiv_2015 from Insurance group by tiv_2015 having count(*) > 1 
  )
and CONCAT(lat,lon) NOT IN 
(select CONCAT(lat,lon) from Insurance group by lat,lon having count(*) > 1 
)
#ITS MY FIRST TIME TO MAKE FUNCTION IN SQL,ALSO I GOT IT FROM THE SUBMISSIONS,,INTERSTING ...
# The OFF SET value is also most often used together with the LIMIT keyword. The OFF SET value allows us to specify which row to start from retrieving data


CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
SET N = N-1;
  RETURN (
      
    SELECT DISTINCT(salary) 
    FROM Employee 
    ORDER BY  salary DESC
    LIMIT 1 OFFSET N
      
  );
END
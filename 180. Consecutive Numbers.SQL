# IF YOU WANT TO UNDERSANT THIS QUERY USE CHATGPT , IT WILL HELP ALOT 

SELECT DISTINCT a.num AS ConsecutiveNums
FROM logs a, logs b, logs c
WHERE a.id = b.id - 1 AND b.id = c.id - 1
  AND a.num = b.num AND b.num = c.num


#THIS CODE IS SIMPLE MORE THAN MY CODE I FOUND IT IN THE SUBMISSIONS


# SELECT DISTINCT num as ConsecutiveNums
# FROM (
#      SELECT id, num, 
#     LAG(num) OVER(ORDER BY id) as prev_num,
#     LEAD(num) OVER(ORDER BY id) as next_num
#     FROM Logs
#  ) l
#  WHERE l.num = l.prev_num
#  AND l.prev_num = l.next_num
#  AND l.num = l.next_num;
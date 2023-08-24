

SELECT T2.id
FROM Weather T1
JOIN Weather T2 
ON T2.recordDate = DATEADD(day, 1, T1.recordDate)
WHERE T2.temperature > T1.temperature;





#######################
#wrong code below because it compares two rows even if they are not consecutives#
#######################

# SELECT id
# FROM (
#     SELECT
#         id,
#         temperature,
#         LAG(temperature) OVER (ORDER BY recordDate) AS prev_temperature
#     FROM Weather
# ) temp
# WHERE temperature > prev_temperature;

SELECT name
FROM Customer
WHERE referee_id <>2
OR referee_id IS NULL

#if we dont use or null rows will not be retrived
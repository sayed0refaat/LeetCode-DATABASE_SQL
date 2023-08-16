# LIMIT HERE TO SELECT THE FISRT ROW ONLY ...

SELECT customer_number 
FROM Orders 
GROUP BY customer_number 
ORDER BY count(customer_number) DESC LIMIT 1;
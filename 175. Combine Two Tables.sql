SELECT P.firstname,P.lastname,A.city,A.state
FROM person P
LEFT JOIN address A
ON P.personId =A.personId
#If a number is 'NULL' in p_id, then it is a root node
#If a number appears in both id and p_id, it is an inner node
#If a number only appears in id and not in p_id, it is a leaf node




select t.id,
case
when t.p_id is null then 'Root'
when t.id in(select p_id from Tree) then 'Inner'
else 'Leaf'
end
as type
from Tree t;
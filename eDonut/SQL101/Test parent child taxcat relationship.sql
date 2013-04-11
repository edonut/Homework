select t.name, t.taxcat_id
from taxcat t
where t.taxcat_id in 
(
select  tr.child_id
from taxcatrel tr
--this is the specific id nubmer for insect repellant group
where tr.parent_id like '3161'
)
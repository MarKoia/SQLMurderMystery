select 
case
	when person_id=14887 then 'Witness 1'
	else  'Witness 2'
end as witness, transcript	
from interview
where person_id in (14887, 16371)
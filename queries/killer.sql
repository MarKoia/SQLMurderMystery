select person.name
from income
inner join person
   on income.ssn=person.ssn
inner join drivers_license as dl
   on person.license_id=dl.id
inner join facebook_event_checkin as fec
   on person.id=fec.person_id
where dl.hair_color= 'red' and dl.height between 65 and 67 and dl.car_make='Tesla' 
and dl.car_model='Model S' and fec.event_name='SQL Symphony Concert' 
and fec.date like '201712%'
group by person.name
having count(person.name)=3
order by income.annual_income desc
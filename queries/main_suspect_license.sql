select person.id as MainSuspect 
from person
inner join drivers_license
   on person.license_id=drivers_license.id
where drivers_license.plate_number like '%H42W%' and person.id in (28819,67318)
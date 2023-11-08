select get_fit_now_member.person_id
from get_fit_now_member 
inner join get_fit_now_check_in
   on get_fit_now_member.id=get_fit_now_check_in.membership_id
where get_fit_now_check_in.check_in_date=20180109 and get_fit_now_member.id like '48Z%'
 and get_fit_now_member.membership_status= 'gold'


select * from role inner join user_new
ON  role.id=user_new.role_id
order by role.name ,user_new.name;


select * from role left outer join  user_new
ON  role.id=user_new.role_id
order by role.name ,user_new.name;


select user_new.name from role join user_new
on role.id=user_new.role_id


select user_new.phonenumber,user_new.emailid, profile.batch, department.name, profile.designation, experience.company_name
from user_new inner join profile
on user_new.profile_id=profile.id
inner join degree
on profile.degree_id=degree.id
inner join department
on degree.department_id=department.id
inner join experience
on profile.id=experience.profile_id
where user_new.name = 'ProGrad' and experience.currentValue=3



select  user_new.name, skill_type.name
from user_new inner join role
on user_new.role_id=role.id
inner join profile
on user_new.profile_id=profile.id
inner join skill_type
on user_new.id=skill_type.id
where role.name='Alumini'


select user_new.name, experience.company_name
from user_new inner join role
on user_new.role_id=role.id
inner join profile
on user_new.profile_id=profile.id
inner join experience
on user_new.id=experience.id
where role.name = 'Alumini'
order by user_new.name , experience.company_name


select user_new.name, experience.company_name
from user_new inner join role
on user_new.role_id=role.id
inner join profile
on user_new.profile_id=profile.id
inner join experience
on user_new.id=experience.id
where role.name = 'Alumini' and experience.currentValue=1
order by user_new.name


select user_new.name, experience.company_name
from user_new inner join role
on user_new.role_id=role.id
inner join profile
on user_new.profile_id=profile.id
inner join experience
on user_new.id=experience.id
where role.name = 'Alumini' and experience.currentValue=1 and profile.batch='2008'
order by user_new.name


select  user_new.name, user_new.emailid, user_new.phonenumber, profile.address
from user_new inner join role
on user_new.role_id=role.id
inner join  profile
on user_new.profile_id=profile.id
where role.name='Alumni' and user_new.profile_id is not null
order by user_new.name;




select  user_new.name, user_new.emailid, user_new.phonenumber, profile.address
from user_new inner join role
on user_new.role_id=role.id
inner join  profile
on user_new.profile_id=profile.id
where role.name='Alumni' and profile.batch='2008'
order by user_new.name;



select  user_new.name, user_new.emailid, user_new.phonenumber, profile.address
from user_new inner join role
on user_new.role_id=role.id
inner join  profile
on user_new.profile_id=profile.id
inner join degree
on user_new.id=degree.id
where role.name='Alumni' and degree.name='BSC_CT'
order by user_new.name;




select  user_new.name, user_new.emailid, user_new.phonenumber, profile.address
from user_new inner join role
on user_new.role_id=role.id
inner join  profile
on user_new.profile_id=profile.id
inner join degree
on user_new.id=degree.id
inner join department
on user_new.id=department.id
where role.name='Alumni' and department.name='CSE'
order by user_new.name;



select  user_new.name, higher_degree.university_name
from user_new inner join role
on user_new.role_id=role.id
inner join  profile
on user_new.profile_id=profile.id
inner join higher_degree
on user_new.id=higher_degree.id
inner join department
on user_new.id=department.id
where role.name='Alumni' and higher_degree.degree_name is not null
order by  user_new.name,higher_degree.university_name




select  user_new.name, user_new.emailid, user_new.phonenumber, profile.address
from user_new inner join role
on user_new.role_id=role.id
inner join  profile
on user_new.profile_id=profile.id
inner join degree
on profile.degree_id=degree.id
inner join department
on degree.department_id=department.id
inner join higher_degree
on user_new.id=higher_degree.id
where role.name='Alumni' and higher_degree.university_name='Texas University'
order by  user_new.name




select  user_new.name, profile.batch
from user_new inner join role
on user_new.role_id=role.id
inner join  profile
on user_new.profile_id=profile.id
where role.name='Alumni' and profile.gender='female'
order by  user_new.name



select  user_new.name, profile.batch,degree.name
from user_new inner join role
on user_new.role_id=role.id
inner join  profile
on user_new.profile_id=profile.id
inner join degree
on user_new.id=degree.id
where role.name='Alumni' and profile.gender='female'
order by  user_new.name



select  user_new.name, profile.batch,degree.name,department.name
from user_new inner join role
on user_new.role_id=role.id
inner join  profile
on user_new.profile_id=profile.id
inner join degree
on user_new.id=degree.id
inner join department
on user_new.id=department.id
where role.name='Alumni' and profile.gender='female'
order by user_new.name




select  degree.name, department.name
from degree inner join department
on degree.department_id=department.id
order by degree.name



select  user_new.name, profile.designation
from user_new inner join role
on user_new.role_id=role.id
inner join  profile
on user_new.profile_id=profile.id
where role.name='Alumni' and profile.gender='male'
order by user_new.name



select  user_new.name, profile.designation
from user_new inner join role
on user_new.role_id=role.id
inner join  profile
on user_new.profile_id=profile.id
inner join experience
on user_new.id=experience.id
where role.name='Alumni' and experience.currentValue=1 and experience.company_name='TCS'
order by user_new.name




select  user_new.name, querytable.content
from user_new inner join querytable
on user_new.id=querytable.id
order by user_new.name


select  user_new.name, querytable.content
from user_new inner join querytable
on user_new.id=querytable.id
where parent_id is not null
order by user_new.name



select  user_new.name, post.content
from user_new inner join post
on user_new.id=post.id
order by user_new.name


select  user_new.name, post.content
from user_new inner join post
on user_new.id=post.id
inner join post_type
on post.type_id=post_type.id
where post_type.name='Technology'
order by user_new.name,post.dateof;


select  user_new.name, post.content
from user_new inner join post
on user_new.id=post.id
inner join post_type
on post.type_id=post_type.id
where post.dateof='2013'
order by user_new.name, post.dateof, post.content;




select  user_new.name, department.name
from user_new inner join role
on user_new.role_id=role.id
inner join profile
on user_new.profile_id=profile.id
inner join degree
on user_new.profile_id=degree.id
inner join department
on user_new.id=department.id
inner join profile_skills
on user_new.profile_id=profile_skills.profile_id
inner join skill_type
on user_new.id=skill_type.id
where skill_type.name='Programming'
order by user_new.name




select  user_new.name, event_type.name
from user_new inner join event_type
on user_new.id=event_type.id
inner join role
on user_new.role_id=role.id
where role.name='Alumni'
order by user_new.name,event_type.dateof,
event_type.name desc

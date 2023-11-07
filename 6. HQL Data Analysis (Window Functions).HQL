
1. Calculate the cumulative sum of 'NoOfContacts' for each 'Job'
category, ordered by 'Age'.

select age,Job,NoOfContacts,sum(NoOfContacts) over (partition by Job order by age asc)as cumulative_sum
from car_insurance_data

2. Calculate the running average of 'Balance' for each 'Job'
category, ordered by 'Age'.

select age,Job,balance,avg(Balance)  over (partition by Job order by age ) as running_average
from car_insurance_data
order by age,job;

3. For each 'Job' category, find the maximum 'Balance' for each
'Age' group using window functions.

select age,Job,balance from 
(
select age,job,balance,row_number() over (partition by job,age order by balance desc) as rn
from car_insurance_data
) t
where rn = 1
order by job,age;

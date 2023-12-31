
1. Find the job category with the highest number of car insurances.

SELECT Job
FROM (
  SELECT Job, COUNT(CarInsurance) AS car_insurance_count
  FROM car_insurance_data
  WHERE CarInsurance = 1
  GROUP BY Job
) AS t
ORDER BY car_insurance_count DESC
LIMIT 1;


2. Which month has seen the highest number of last contacts?

select
LastContactMonth,count(LastContactMonth) as contact_count
from car_insurance_data
group by LastContactMonth
order by contact_count desc
limit 1;


3. Calculate the ratio of the number of customers with car insurance
to the number of customers without car insurance for each job
category.


SELECT a.Job, (a.car_insurance_count / b.no_car_insurance_count) AS car_insurance_ratio
FROM (
    SELECT Job, COUNT(*) AS car_insurance_count
    FROM car_insurance_data
    WHERE CarInsurance = 1
    GROUP BY Job
) a
JOIN (
    SELECT Job, COUNT(*) AS no_car_insurance_count
    FROM car_insurance_data
    WHERE CarInsurance = 0
    GROUP BY Job
) b
ON a.Job = b.Job;


4. Find out the 'Job' and 'Education' level combination which has the highest number of car insurances.

select a.Job,a.Education 
from(select Job,Education, count(CarInsurance) as car_insurance_count
from car_insurance_data 
where CarInsurance = 1
group by Job,Education ) a
order by car_insurance_count desc
limit 1;


5. Calculate the average 'NoOfContacts' for each 'Outcome' and 'Job' combination.

select Outcome,Job,avg(NoOfContacts) as average_contacts
from car_insurance_data
group by Outcome,Job


6. Determine the month with the highest total 'Balance' of
customers.

select LastContactMonth as month ,sum(balance) as total_balance
from car_insurance_data
group by LastContactMonth
order by total_balance desc
limit 1;

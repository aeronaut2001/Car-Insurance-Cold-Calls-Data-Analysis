1. What is the average, minimum, and maximum balance for eachjob category?

select 
job,avg(Balance) as avg_b,min(balance) as min_b,max(balance) as max_b from car_insurance_data
group by job;

2. Find the total number of customers with and without car insurance?

SELECT CarInsurance, COUNT(*)
FROM car_insurance_data
group by CarInsurance;

3. Count the number of customers for each communication type?

select Communication,count(id) from car_insurance_data
group by Communication;


4. Calculate the sum of 'Balance' for each 'Communication' type?

select Communication, sum(Balance) from car_insurance_data
group by Communication;

5. Count the number of 'PrevAttempts' for each 'Outcome' type?

select Outcome,Count(PrevAttempts),sum(PrevAttempts) from car_insurance_data
group by Outcome;

6. Calculate the average 'NoOfContacts' for people with and without 'CarInsurance'?

select CarInsurance,avg(NoOfContacts) from car_insurance_data
group by CarInsurance;

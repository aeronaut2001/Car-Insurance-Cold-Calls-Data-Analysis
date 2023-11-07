
1. For customers who have both a car loan and home insurance,
find out the average 'Balance' for each 'Education' level.

SELECT Education, AVG(Balance) AS Average_Balance
FROM car_insurance_data
WHERE HHInsurance = 1 AND CarLoan = 1
GROUP BY Education;


2. Identify the top 3 'Communication' types for customers with
'CarInsurance', and display their average 'NoOfContacts'.


select t.communication,t.avg_contacts from
(select Communication , avg (NoOfContacts) as avg_contacts from car_insurance_data
where CarInsurance = 1
group by Communication,CarInsurance
order by communication_count desc) as t
limit 3;


3. For customers who have a car loan, calculate the average
balance for each job category.

SELECT Job, AVG(Balance) AS
average_balance
FROM car_insurance_data
WHERE CarLoan = 1
GROUP BY Job;


4. Identify the top 5 job categories that have the most customers
with a 'default', and show their average 'balance'


SELECT Job, AVG(Balance) AS average_balance
FROM (
    SELECT Job, Balance
    FROM car_insurance_data
    WHERE Default = 1
) t
GROUP BY Job
ORDER BY COUNT(*) DESC
LIMIT 5;



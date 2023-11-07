1. Join the original table with the partitioned table and find out the
average 'Balance' for each 'Job' and 'Education' level.


SELECT o.Job, p.Education, AVG(o.Balance) as
average_balance
FROM car_insurance_data o
JOIN car_insurance_data_partition p ON
o.Id = p.Id
GROUP BY o.Job, p.Education;


2. Join the original table with the bucketed table and calculate the
total 'NoOfContacts' for each 'Age' group.

SELECT b.age,sum(o.NoOfContacts) as
total_Contacts
FROM car_insurance_data o
JOIN car_insurance_data_bucket b ON
o.Id = b.Id
GROUP BY b.age;


3. Join the partitioned table and the bucketed table based on the 'Id'
field and find the total balance for each education level and
marital status for each age group.


SELECT p.Education,b.Marital,b.age,sum(p.Balance) as
total_balance
FROM car_insurance_data_partition p
JOIN car_insurance_data_bucket b ON
p.Id = b.Id
GROUP BY p.Education,b.Marital,b.age;


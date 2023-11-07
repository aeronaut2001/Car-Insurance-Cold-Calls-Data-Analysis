1. How many records are there in the dataset?
   select count(*) from  car_insurance_data

2. How many unique job categories are there?
   select count(distinct(Job)) from car_insurance_data;

3. What is the age distribution of customers in the dataset? Provide a breakdown by age group: 18-30, 31-45, 46-60, 61+.?

  SELECT CASE
  WHEN Age BETWEEN 18 AND 30 THEN '18-30'
  WHEN Age BETWEEN 31 AND 45 THEN '31-45'
  WHEN Age BETWEEN 46 AND 60 THEN '46-60'
  ELSE '61+'
  END AS age_group,
  COUNT(*) AS count
  FROM car_insurance_data
  GROUP BY CASE
  WHEN Age BETWEEN 18 AND 30 THEN '18-30'
  WHEN Age BETWEEN 31 AND 45 THEN '31-45'
  WHEN Age BETWEEN 46 AND 60 THEN '46-60'
  ELSE '61+'
  END;


4. Count the number of records that have missing values in any field?

  select count(*) from car_insurance_data
  where id is null
  or age is null
  or job is null
  or marital is null
  or education is null
  or default is null
  OR Balance IS NULL
  OR HHInsurance IS NULL
  OR CarLoan IS NULL
  OR Communication IS NULL
  OR LastContactDay IS NULL
  OR LastContactMonth IS NULL
  OR NoOfContacts IS NULL
  OR DaysPassed IS NULL
  OR PrevAttempts IS NULL
  OR Outcome IS NULL
  OR CallStart IS NULL
  OR CallEnd IS NULL
  OR CarInsurance IS NULL;

5. Determine the number of unique 'Outcome' values and their respective counts ?

  SELECT Outcome, COUNT(*)
  FROM car_insurance_data
  GROUP BY Outcome;

6. Find the number of customers who have both a car loan and home insurance ?

  select count(id) from car_insurance_data
  where CarLoan=1 and HHInsurance = 1;





1. Calculate the difference in 'NoOfContacts' between each
customer and the customer with the next highest number of
contacts in the same 'Job' category.

SELECT
    c.ID,
    c.Job,
    c.NoOfContacts,
    c.NoOfContacts - COALESCE(MAX(c2.NoOfContacts), 0) AS ContactDifference
FROM
    car_insurance_data c
LEFT JOIN
    car_insurance_data c2
ON
    c.Job = c2.Job
    AND c.NoOfContacts < c2.NoOfContacts
GROUP BY
    c.ID,
    c.Job,
    c.NoOfContacts
ORDER BY
    c.Job,
    c.NoOfContacts;


2. For each customer, calculate the difference between their
'balance' and the average 'balance' of their 'job' category.

SELECT c.Id, c.Job, c.Balance,
c.Balance - j.AvgBalance AS
BalanceDifference
FROM car_insurance_data c
JOIN (
SELECT Job, AVG(Balance) AS
AvgBalance
FROM car_insurance_data
GROUP BY Job
) j ON c.Job = j.Job;


3. For each 'Job' category, find the customer who had the longest
call duration.


WITH CTE AS (
    SELECT
        Job,
        Id,
        (CallEnd - CallStart) AS CallDuration,
        ROW_NUMBER() OVER (PARTITION BY Job ORDER BY (CallEnd - CallStart) DESC) AS rn
    FROM
        car_insurance_data
)

SELECT Job, Id, CallDuration
FROM CTE
WHERE rn = 1;


4. Calculate the moving average of 'NoOfContacts' within each 'Job'
category, using a window frame of the current row and the two
preceding rows


SELECT Id, Job, NoOfContacts,
AVG(NoOfContacts) OVER (PARTITION BY
Job ORDER BY Id ROWS BETWEEN 2
PRECEDING AND CURRENT ROW) AS
moving_average
FROM car_insurance_data;

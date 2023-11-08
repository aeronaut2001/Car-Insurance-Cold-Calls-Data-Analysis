# Car Insurance Cold Calls Data Analysis
 

 <p align="left"> <img src="https://komarev.com/ghpvc/?username=aeronaut2001&label=Profile%20views&color=0e75b6&style=flat" alt="aeronaut2001" /> </p>
 
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/aeronaut2001) 
 [![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/aeronaut2001?tab=repositories)

---

## Car Insurance Cold Calls Data Analysis using Apache Hive 🐝
📝 Gain the skills 
---


 
 

## 📙 Project Structures :


- [x] **Project Introduction**:
- "I worked on an individual data analysis project using Apache Hive. The project involved delving into a dataset related to car insurance, with the goal of uncovering valuable insights and patterns."

- [x] **Problem Statement**:
- "The main challenge for me was to analyze this dataset and derive meaningful conclusions. I wanted to understand customer behavior, identify trends, and see how various factors, like job categories, age groups, and communication methods, influenced the outcomes."

- [x] **Data Loading**:
- "To get started, I had to load the dataset into Hive. I created an external table with the provided schema and loaded the data from a text file or an HDFS path. This step allowed me to start working with the data effectively."

- [x] **Data Exploration**:
- "I began by exploring the dataset:
  - I counted the number of records, which was my starting point.
  - I found several unique job categories among the customers.
  - I grouped customers by age into categories: 18-30, 31-45, 46-60, and 61+.
  - I identified and addressed records with missing values to ensure data quality.
  - I looked at different 'Outcome' values and their respective frequencies.
  - Lastly, I determined how many customers had both a car loan and home insurance."

- [x] **Aggregations**:
- "I performed several aggregations on the dataset to uncover insights:
  - I calculated the average, minimum, and maximum balance for each job category.
  - I found the total number of customers with and without car insurance.
  - I counted the number of customers for each communication type.
  - I summed up the 'Balance' for each 'Communication' type.
  - I also looked at the 'PrevAttempts' count for each 'Outcome' type.
  - Finally, I compared the average 'NoOfContacts' between customers with and without 'CarInsurance'."

- [x] **Partitioning and Bucketing**:
- "I then organized the data into partitioned and bucketed tables:
  - I created a partitioned table based on 'Education' and 'Marital' status.
  - Another table was bucketed into 4 age groups as specified in the project requirements.
  - I added an additional partition on 'Job' to the partitioned table and moved data accordingly.
  - I increased the number of buckets to 10 in the age bucketed table and redistributed the data."

- [x] **Optimized Joins**:
- "Optimizing my queries was crucial. I joined the original table with the partitioned and bucketed tables to find valuable insights, such as calculating averages and totals for specific attributes."

- [x] **Window Functions**:
- "I used window functions for more advanced analysis:
  - I calculated cumulative sums, running averages, maximum values, and ranks for different combinations of attributes."

- [x] **Advanced Aggregations**:
- "For deeper insights, I carried out advanced aggregations:
  - I identified job categories with the highest car insurance uptake.
  - I pinpointed the month with the highest number of last contacts.
  - I calculated the ratio of customers with and without car insurance for each job category."

- [x] **Complex Joins and Aggregations**:
- "I delved into complex joins and aggregations to understand customer behavior more deeply."

- [x] **Advanced Window Functions**:
- "I also applied advanced window functions to calculate differences, identify top performers, and compute moving averages."

- [x] **Performance Tuning :**

- "In the final phase, I experimented with different file formats, compression levels, and Hive optimization techniques to assess their impact on query performance. This was crucial for optimizing my analysis."

- [x] **Key Takeaways :**

- "In conclusion, this project taught me a lot about data analysis, Hive, and the importance of extracting actionable insights from complex datasets. I learned how to handle real-world data challenges and use advanced techniques to drive meaningful conclusions."

This revised explanation allows you to highlight your individual contributions and skills throughout the project.












































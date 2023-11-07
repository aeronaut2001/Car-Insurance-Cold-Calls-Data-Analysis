# Data Loading :

1. Load the data into a Hive table. Create an external table with the
given schema and load the data into the table from a text file or HDFS
path.

CREATE EXTERNAL TABLE car_insurance_data (
Id INT,
Age INT,
Job STRING,
Marital STRING,
Education STRING,
Default INT,
Balance INT,
HHInsurance INT,
CarLoan INT,
Communication STRING,
LastContactDay INT,
LastContactMonth INT,
NoOfContacts INT,
DaysPassed INT,
PrevAttempts INT,
Outcome STRING,
CallStart STRING,
CallEnd STRING,
CarInsurance INT)
row format delimited 
fields terminated by ','
stored as textfile
location '/tmp/input_data/';



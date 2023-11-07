
1. Experiment with different file formats (like ORC, Parquet) and
measure their impact on the performance of your Hive queries.

a. text file :
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


b. orc:
CREATE TABLE car_insurance_data_orc (
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
stored as orc;

INSERT OVERWRITE TABLE
car_insurance_data_orc
SELECT * FROM car_insurance_data;

c. parquet file :

CREATE TABLE car_insurance_data_parquet (
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
stored as parquet;

INSERT OVERWRITE TABLE
car_insurance_data_parquet
SELECT * FROM car_insurance_data;

d. avro:

CREATE table car_insurance_data_avro (
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
stored as avro;


INSERT OVERWRITE TABLE
car_insurance_data_avro
SELECT * FROM car_insurance_data;




and for experiment i only run single query like select* from table and check performance

text - 0.258 seconds
parquet - 0.223 seconds
avro - 0.167 seconds
orc - 0.182 seconds





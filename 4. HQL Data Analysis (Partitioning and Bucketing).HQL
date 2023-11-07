1. Create a partitioned table on 'Education' and 'Marital' status. Load data from the original table to this new partitioned table.


step 1.create partition table :
CREATE EXTERNAL TABLE car_insurance_data_partition (
Id INT,
Age INT,
Job STRING,
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
partitioned by (Education STRING ,Marital STRING)
row format delimited 
fields terminated by ','
stored as textfile


step 2. set property:

set hive.exec.dynamic.partition.mode=nonstrict;
....because we are doing dynamic partition , dynamic beacuse we not mention age is equal to this or that 


step 3.load data:

INSERT OVERWRITE TABLE car_insurance_data_partition PARTITION (Education, Marital)
SELECT 
Id, Age, Job, Default, Balance, HHInsurance,
CarLoan, Communication, LastContactDay,
LastContactMonth, NoOfContacts, DaysPassed,
PrevAttempts, Outcome, CallStart, CallEnd,
CarInsurance, Education, Marital
FROM car_insurance_data;

................................................................................................................................
2. Create a bucketed table on 'Age', bucketed into 4 groups (as per
the age groups mentioned above). Load data from the original
table into this bucketed table.


step 1: create bucket table 

CREATE TABLE car_insurance_data_bucket (
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
clustered by (Age) into 4 buckets
row format delimited 
fields terminated by ','
stored as textfile;


step 2. set property:
set hive.enforce.bucketing=true;


step 3: load data 

INSERT OVERWRITE TABLE
car_insurance_data_bucket
SELECT * FROM car_insurance_data;

..................................................................................................................................................
3. Add an additional partition on 'Job' to the partitioned table created
earlier and move the data accordingly.


(((
note :
If you want to add an additional partition on 'Job' to the
previously created partitioned table, you actually have
to create a new table as Hive does not allow altering
the partitioning of existing tables. However, it's a
straightforward task to create a new partitioned table
and move the data accordingly
)))


step 1st : create table:

CREATE TABLE car_insurance_data_d_partition (
Id INT,
Age INT,
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
partitioned by (Job STRING,Marital STRING,Education STRING)
row format delimited 
fields terminated by ','
stored as textfile


step 2. set property:

set hive.exec.dynamic.partition.mode=nonstrict;
....because we are doing dynamic partition , dynamic beacuse we not mention age is equal to this or that 


step 3: load data

insert overwrite table car_insurance_data_d_partition partition(Job,Marital,Education)
select 
Id, Age, Default, Balance, HHInsurance,
CarLoan, Communication, LastContactDay,
LastContactMonth, NoOfContacts, DaysPassed,
PrevAttempts, Outcome, CallStart, CallEnd,
CarInsurance, Education, Marital, Job
from car_insurance_data


(((
imp : during running this query the map and reducer get failed i get to know that my file format should be more optimized rather than stored it as text file as we know orc support better with hive so i rewrite query again.
)))

/////////////////////////
new query :

step 1st : create table:

CREATE TABLE car_insurance_data_d_partition_orc (
Id INT,
Age INT,
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
partitioned by (Job STRING,Marital STRING,Education STRING)
row format delimited 
fields terminated by ','
stored as orc


step 2. set property:

set hive.exec.dynamic.partition.mode=nonstrict;
....because we are doing dynamic partition , dynamic beacuse we not mention age is equal to this or that 


step 3: load data

insert overwrite table car_insurance_data_d_partition_orc partition(Job,Marital,Education)
select 
Id, Age, Default, Balance, HHInsurance,
CarLoan, Communication, LastContactDay,
LastContactMonth, NoOfContacts, DaysPassed,
PrevAttempts, Outcome, CallStart, CallEnd,
CarInsurance, Education, Marital, Job
from car_insurance_data_partition ;

still it fails


......................................................................................................................

4. Increase the number of buckets in the bucketed table to 10 and
redistribute the data.

(((
note :

In Hive, once a table is bucketed, the number of
buckets cannot be changed. The process of bucketing
happens at the time of table creation and is immutable.
Therefore, in order to increase the number of buckets,
you will need to create a new table with the desired
number of buckets and then insert data into the new
table from the existing one.

)))

step 1 . create table:

CREATE TABLE car_insurance_data_n_bucket (
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
clustered by (age) into 10 buckets
row format delimited 
fields terminated by ','
stored as textfile;


step 2. enable property :

set hive.enforce.bucketing=true;


step 3. load data :

insert overwrite table car_insurance_data_n_bucket 
select *
from car_insurance_data_bucket;

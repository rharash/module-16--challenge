# module-16--challenge

Goal-
To implement a data analytics pipeline for review Rating Analysis - ETL processing, storing in Database and the Use SQL for Analysis.


Data Analytics Pipeline-
Perform ETL on the dataset-
Extracted data from the S3 dataset files and loaded them into Dataframes using PySpark, Spark in Google Colab. Transformed the dataset to clean and prep it based on the Database table schema where it will be loaded using Spark. Loaded the data into their respective tables in the Postgres Database using JDBC APIs. The database had been previously created on Amazon RDS and the tables created on Postgres.

Data Analysis Using SQL-
Using SQL on PgAdmin, used various queries to generate tables and counts of all the Vine (Paid) and Non Vine (Unpaid) Review ratings.

CONCLUSION:-

1)The average review rating is 3 Stars.
2)The vine_table contains only Non-Vine review ratings. 
3)Since these reviews are Non-Vine reviews there isn't any way to know how trustworthy they are from this data.

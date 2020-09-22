# U.S. State Populations Vs. Total Fast Food Restaurants 

Thanks for checking out our team's repo! Our team retrieved data from multiple sources to analyze trends in fast food restaurants across the United States. We used the ETL process for reading data, structuring data, and writing data into a SQL database. Please check out our 'ETL_main.ipynb' file to observe our ETL process and our 'queries.sql' file to see our data queries. You can find a complete project report in our 'Project Report.docx' file.

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Project Instructions](#project-instructions)
* [Team Members](#team-members)

<!--About the Project-->
## About the Project
ETL Process:
* Data Extraction: Data in the ‘Fast_Food_Restaurants.csv’ file was extracted from Kaggle.com. U.S. state populations and state abbreviations were extracted from Wikipedia.
* Data Transformation: Data was cleaned by removing unwanted columns/rows, formatting data, merging dataframes through Pandas, and adjusting columns/indices according to our PostgreSQL database.
* Data Loading: Transformed dataframes were loaded into our PostgreSQL database into their appropriate tables.

Data Queries:
* Queries were explored through our PostgreSQL database and Pandas dataframes. The following queries were used to analyze fast food restaurants across the United States and create visualizations through Matplotlib:
  * Aggregate across states to get count of restaurants
  * Aggregate across states to get count of restaurants joined with populations
  * Number of restaurants in the top 15 most populous states
  * Top 15 states by restaurant count
  * Ohio restaurants
  * California restaurants

<!--Built With-->
### Built With
This project was built using the following frameworks:<br>
* Python
* PostgreSQL
* Pandas
* Matplotlib

<!--Project Instructions-->
## Project Instructions

### Team Effort
Due to the short timeline, teamwork will be crucial to the success of this project! Work closely with your team through all phases of the project to ensure that there are no surprises at the end of the week.<br>
Working in a group enables you to tackle more difficult problems than you'd be able to working alone. In other words, working in a group allows you to work smart and dream big. Take advantage of it!<br>

### Project Proposal
Before you start writing any code, remember that you only have one week to complete this project. View this project as a typical assignment from work. Imagine a bunch of data came in and you and your team are tasked with migrating it to a production data base.<br>

### Finding Data
Your project must use 2 or more sources of data. We recommend the following sites to use as sources of data:<br>
-data.world<br>
-Kaggle<br>

### Data Cleanup & Analysis
Once you have identified your datasets, perform ETL on the data. Make sure to plan and document the following:<br>
-The sources of data that you will extract from.<br>
-The type of transformation needed for this data (cleaning, joining, filtering, aggregating, etc).<br>
-The type of final production database to load the data into (relational or non-relational).<br>
-The final tables or collections that will be used in the production database.<br>
-You will be required to submit a final technical report with the above information and steps required to reproduce your ETL process.<br>

### Project Report
At the end of the week, your team will submit a Final Report that describes the following:<br>
<br>
<strong>Extract</strong>: your original data sources and how the data was formatted (CSV, JSON, pgAdmin 4, etc).<br>
<strong>Transform</strong>: what data cleaning or transformation was required.<br>
<strong>Load</strong>: the final database, tables/collections, and why this was chosen.<br>
<br>
Please upload the report to Github and submit a link to Bootcampspot.

<!--Built With-->
## Team Members
* [ Todd Auman ](https://github.com/jtauman)
* [ Bobby Huffstetler ](https://github.com/bhuffstetler)
* [ Kristi McGrath ](https://github.com/kmcgrath88)
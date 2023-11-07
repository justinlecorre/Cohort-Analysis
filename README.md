# Cohort-Analysis
(Notes) White background for visualisation pictures. Links to SQL code and dashboard when uploaded.
# Overview
For this project, cohort analysis was used to examine customer retention among an ecommerce store. This was performed by grouping customers by their acquisition date and tracking their monthly purchasing behaviour.

Steps taken:

- Cleaned data in MS SQL by removing null values and cancelled orders
- Extracted the date in which each customer made their first purchase with the company and developed acquisition cohorts
- Created a cohort index for each order showing the number of months passed since the customer's first purchase
- Imported data in Tableau and visualised findings

Links

- The SQL component of this project can be viewed in [CohortAnalysis.sql](https://github.com/justinlecorre/Cohort-Analysis/blob/main/CohortAnalysis.sql)
- The dashboard in Tableau can be viewed on my Tableau Public page (here)

# Findings

Using Tableau, a cohort matrix was developed to visualise the retention among each customer cohort.

![image](https://github.com/justinlecorre/Cohort-Analysis/assets/137729013/6e8a0ff9-e765-4b6d-9c54-1436b3c4fa55)

How to read:

- Each row represents a cohort of customers - 'Cohort' on this chart refers to the year & month in which a group of customers made their first ever purchase
- Each column represents the number of months passed since the first purchase - Showing how many customers from a cohort made another purchase and how many months after their first purchase this occurred



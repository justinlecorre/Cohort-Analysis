# Cohort-Analysis
For this project, cohort analysis was used to examine customer retention among an ecommerce store. This was performed by grouping customers by their acquisition date and tracking their monthly purchasing behaviour.

Steps taken:

- Cleaned data in MS SQL by removing null values and cancelled orders
- Extracted the date in which each customer made their first purchase with the company and developed acquisition cohorts
- Created a cohort index for each order showing the number of months passed since the customer's first purchase
- Imported data into Tableau and visualised findings

Links

- The SQL component of this project can be viewed in [CohortAnalysis.sql](https://github.com/justinlecorre/Cohort-Analysis/blob/main/CohortAnalysis.sql)
- The interactive dashboard in Tableau can be viewed on my Tableau Public page [here](https://public.tableau.com/app/profile/justin.le.corre/viz/Cohort2_16989409017990/Dashboard1)

# Findings

Using Tableau, a cohort matrix was developed to visualise the retention among each customer cohort.

![image](https://github.com/justinlecorre/Cohort-Analysis/assets/137729013/6e8a0ff9-e765-4b6d-9c54-1436b3c4fa55)

How to read:

- Each row represents a cohort of customers - 'Cohort' on this chart refers to the year & month in which a group of customers made their first ever purchase
- Each column represents the number of months passed since the first purchase - Thus showing how many customers from a cohort returned to make another purchase and how many months after their first purchase this occurred

For example, looking down the columns, 37% of the customers acquired in the December 2010 cohort returned 1 month after their first purchase which is higher than all the other cohorts.

![image](https://github.com/justinlecorre/Cohort-Analysis/assets/137729013/1881e809-23cb-4fb6-b0a5-a4c66dcdc0d8)



### Seasonal Trend

When looking across all the cohorts, it appears that customer retention occured the most during November.

This is evident as reading the chart diagonally allows you to compare how all the cohorts behaved in a specific month. As such, when looking at the highlighted area, retention occurred the most during November for most cohorts.

![image](https://github.com/justinlecorre/Cohort-Analysis/assets/137729013/f293037d-11a3-47bd-b91d-5c9806e2ff02)

- For example, 50% of the 2010-12-01 cohort returned 11 months after their first purchase which falls on November

![image](https://github.com/justinlecorre/Cohort-Analysis/assets/137729013/6803cf10-7b44-4a3d-a580-637b3a22f868)

- Among the 2011-06-01 cohort, 17% returned after 1 month but later increased to 33% in the fifth month which also falls on November

![image](https://github.com/justinlecorre/Cohort-Analysis/assets/137729013/7db56737-21e0-4eb2-9e94-818577578ebc)

An increase in retention during this period can potentially be associated with events such as Black Friday and the Christmas season.

# Action

While seasonal trends in customer behaviour is expected, this can provide opportunities for the company to capitalize on.

In this case, the company could target these customers to increase retention beyond the holiday period. This could be achieved through various marketing strategies such as:

Email marketing campaign

- Develop an email campaign to encourage customers to return after the holiday period
- This could be in the form of personalised messages being sent to customers tailored towards their particular behaviour with the company
- For example, a customer could be provided with recommendations for other products that may interest them based on their previous purchases or browsing history
- A customer could receive an email recommending a product which is frequently purchased with other products they have purchased or viewed on the ecommerce store

Customer loyalty programme

- Implementing a customer loyalty programme could provide an incentive for these customers to return outside of the holiday period
- This could be in the form of rewards, discounts and offers

In summary, cohort analysis has highlighted a seasonal trend among the customers and such strategies could help to increase retention in the months following the holiday period.


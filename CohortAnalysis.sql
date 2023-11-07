
--Inspecting data

select *
from RetailSales


select * from RetailSales
where CustomerID is null

--Identified empty rows in CustomerID

--1st step is to place clean data inside temp table

;with emptysales as
(
	select * from RetailSales
	where CustomerID is not null			
)
, returneditems as
(
	select * from
	emptysales
	where Quantity > 0 and Price > 0     --Identified cancelled items (negative values in quantity/price)
)

select *
into finalsales
from returneditems

--Clean data is now in finalsales table

select * from finalsales

--For cohort analysis, 1st step is to extract first purchase date and create cohorts for each customer id
	---MIN(OrderDate) - returns smallest value (earliest date/first purchase date from customer)
	---DATEFROMPARTS(year, month, day) - returns specified parts of date

select
	CustomerID,
	MIN(orderdate) as first_purchase_date,
	DATEFROMPARTS(year(min(orderdate)), month(min(orderdate)), 1) as cohort_date
into cohort
from finalsales
group by customerid

---Extracted data is now in 'cohort' table

select * from cohort

---2nd step is to create cohort index - Elapsed months for each order after the customers first purchase
	---Using datediff to return the difference between two dates
	---Using subqueries, this step starts with '1)'


select
	fff.*,
	cohortindex = year_diff * 12 + month_diff  -- 3) Calculating the elapsed months since first purchase.
from												-- 0 = first purchase date. 1 = customer returned 1 month after first purchase
	(
		select
			ff.*,
			year_diff = Order_year - cohort_year,		-- 2) Current order date - cohort date (difference in year & months)
			month_diff = Order_month - cohort_month			-- year_diff is used because of more than one year in data (2010&2011)
		from
			(
				select
					f.*,
					c.Cohort_Date,
					year(f.OrderDate) Order_year,
					month(f.OrderDate) Order_month,
					year(c.Cohort_Date) cohort_year,
					month(c.Cohort_Date) cohort_month      -- 1) Assigning order year/month & cohort year/month to each order
				from finalsales as f
				left join cohort as c
						ON f.CustomerID = c.CustomerID
			) as ff

	) as fff
-- End-to-End Data Analysis on Bike Share Data

-- viewing the data in bike_share_yr_0
select * from bike_share_yr_0

-- viewing the data in bike_share_yr_1
select * from bike_share_yr_1

/* After looking at the data we observe that both the tables have the same
columns and the data is of the year 2021 and 2022 */

-- Creating a Join for the the bike data from the two years
select * from bike_share_yr_0
union
select * from bike_share_yr_1

-- Number of rows is 34,758
/* To ensure there are no  duplicates applying union all to observe in any 
change in data rows */

-- Number of rows in union all is also 34,758

-- ALTER DATABASE bike_data SET COMPATIBILITY_LEVEL = 100;

with data_bike as (
    select * from [bike_share_yr_0]
    union all
    select * from [bike_share_yr_1]
)
select * from data_bike

-- Created a CTE data_bike to use with the cost_table

 select * from cost_table
  
  -- Combining the cost_table with the union data_bike
  with data_bike as (
    select * from [bike_share_yr_0]
    union all
    select * from [bike_share_yr_1]
)
select 
dteday,
season,
a.yr,
weekday,
hr,
rider_type,
riders,
price,
COGS,
riders*price as revenue,
(riders*price) - COGS as profit
from data_bike a
left join cost_table b
on a.yr=b.yr
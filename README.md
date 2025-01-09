# End-To-End-Analysis-of-a-Bike-Rental-Company

## Overview

This project involves creating a dashboard for Toman Bike Share that displays key performance metrics to aid in informed decision-making. The dashboard will cover hourly revenue analysis, profit and revenue trends, seasonal revenue, and rider demographics.

## Project Requirements

### Key Performance Metrics

1. **Hourly Revenue Analysis**: An analysis of revenue generated hourly.
2. **Profit and Revenue Trends**: Visualization of historical revenue and profit trends.
3. **Seasonal Revenue**: Breakdown of revenue by season to identify patterns.
4. **Rider Demographics**: Analysis of rider types to understand user behavior.

### Design and Aesthetics

- Use company colors for branding consistency.
- Ensure the dashboard is user-friendly and easy to navigate.

## Data Source

- Access to the company's raw data is provided create a dummy databse if required.

## Timeline for Completion

- **Preliminary Version**: ASAP
- A detailed timeline will be provided upon understanding the data structure and expected functionalities.

## Data Analysis

### SQL Queries

The following SQL queries will be used to extract relevant data for the dashboard:

```sql
WITH data_bike AS (
    SELECT * FROM [bike_share_yr_0]
    UNION ALL
    SELECT * FROM [bike_share_yr_1]
)
SELECT 
    dteday,
    season,
    a.yr,
    weekday,
    hr,
    rider_type,
    riders,
    price,
    COGS,
    riders * price AS revenue,
    (riders * price) - (COGS*riders) AS profit
FROM data_bike a
LEFT JOIN cost_table b ON a.yr = b.yr;
```

### Key Metrics
Rental Bike Price per Hour: A 25% increase is anticipated.
Rider Demand: Expected to increase by 64%.

### Dashboard Components
- KPIs Over Time: A visualization showing revenue and profit margins over the year.
- Revenue by Season: A breakdown of revenue by each season.
- Rider Demographics: Insights into the types of riders utilizing the service, indicating potential areas for targeted marketing.

![Screenshot of the Dashboard](https://github.com/user-attachments/assets/785330ba-6632-488f-ba63-612317a18a82)


## Conclusion
### Pricing Recommendation

#### Conservative Increase

- Considering the substantial price increase from the previous year, a conservative increase of **10-15%** is recommended to avoid a price ceiling that could lead to decreased demand.
  
#### Price Setting

- If the price in 2022 was **$4.99**:
  - A **10% increase** would set the new price at approximately **$5.49**.
  - A **15% increase** would result in a new price of approximately **$5.74**.

#### Recommended Strategy

1. **Market Analysis**: Conduct further research to gauge customer satisfaction and assess competitive dynamics.
2. **Segmented Pricing Strategy**: Implement different pricing for casual versus registered users, as they may exhibit different sensitivities to price changes.


## Conclusion
This dashboard aims to provide Bike Rental Share with valuable insights into its operations and customer base. The analysis will guide strategic pricing decisions and operational improvements.

## Acknowledgements
Thank you to the Bike Rental team for the opportunity to contribute to this important project.

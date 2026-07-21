# Revenue Analysis

A set of small, self-directed business analysis projects built to practice the core BA toolkit — Excel, SQL, and Power BI — on realistic e-commerce/customer transaction data. Each project takes raw order/customer/product data and turns it into business insight: revenue breakdowns, segment analysis, and churn/decline signals that could inform a sales or marketing decision.

Projects

1. Advanced Excel — Revenue & Segment Analysis

BA mini project - Advanced Excel.xlsx


Built interactive KPI reports using Pivot Tables, XLOOKUP, Conditional Formatting, charts, and data validation.
Calculated the revenue split between Premium and Regular customers (58% vs. 42%).
Documented findings directly in the workbook, e.g. zero Electronics sales in Ahmedabad and zero Accessories sales in Pune — flagged as a gap in category reach that sales/marketing should address.
Includes source data tables: Order Data (combines other tables with XLOOKUP), Customer Data, and Product Data.


Skills demonstrated: PivotTables, cross-tabulation, percentage-of-total calculations, written business observations from data.

2. SQL — Order & Revenue Queries

BA mini project - SQL.sql

A set of queries against orders, customers, and products tables covering:


Enriching raw order data with customer and product details via multi-table JOINs
Revenue aggregation by city, category, and segment
Identifying category gaps — cities with zero sales in a given category, using correlated subqueries
Revenue share by customer segment (window-style percentage calculation)
A city × category revenue matrix using conditional aggregation (CASE WHEN)


Skills demonstrated: JOINs, GROUP BY/aggregation, subqueries, conditional aggregation, percent-of-total logic.

3. Power BI — Customer Transactions Dashboard

BA mini project - PowerBI.pbix

A two-page interactive dashboard:


Customer Transactions Data — KPI cards for Active, Churned, and Total Revenue; a revenue-by-customer table; a revenue trend line chart by segment over time; a revenue-by-city bar chart split by active/churned status; slicers for city, segment, active status, and date.
Executive Matrix — a pivot matrix of Active/Churned/Total revenue by city and segment, plus a written insights panel calling out:

Top 2 customers generate over 50% of total revenue (concentration risk)
Ahmedabad, Delhi, and Kochi show high churned revenue, with Ahmedabad up 80%
Bangalore, Delhi, and Mumbai show sharp revenue decline (Delhi and Mumbai down 25%)
Overall revenue is highly volatile over the period





Skills demonstrated: Data modeling, DAX measures (Active/Churned/Total Revenue), interactive filtering, executive-level storytelling with data.

Source Data

Source data for excel and SQL projects: Dataset-Excel_SQL.xlsx 

Source data for PowerBI projects: Dataset-Powerbi.xlsx

Tools Used

Excel (Pivot Tables, XLOOKUP, Conditional Formatting, charts, and data validation) · SQL · Power BI (Data Modeling, DAX, Report Design)

About

These projects were built to demonstrate practical business analysis skills — turning transactional data into segment, geography, and churn insights that support decision-making. Feedback and suggestions welcome.

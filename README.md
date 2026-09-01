# BLS Labor Market SQL Analysis
SQL analysis of BLS employment and wage data across industries, exploring trends, changes, and correlations using NAICS-based joins.

## Data
Sourced from the U.S. Bureau of Labor Statistics, Current Employment Statistics (CES). Retrieved from https://www.bls.gov/ces/. Original tables are in `tables/`. 

## Tools
SQLite, SQL, Excel (for charts) 

## Structure
- `tables/` — original employment and earnings data
- `queries.sql` — all SQL queries used in the analysis
- `results/` — output data from each query
- `graphs/` — visualizations 

## Methodology
- Sourced employment and earnings data from the U.S. Bureau of Labor Statistics
- Cleaned the raw tables (collapsed multi-row headers into a single row) so the data could be imported cleanly
- Imported the cleaned data into a SQLite database with two tables: employment and earnings
- Wrote SQL queries to compare employment and earnings trends across industries
- Ran a correlation analysis (q5-6) to examine the relationship between employment change and earnings change
- Visualized select results in Excel 

## Key Findings
- Employment numbers and average earnings by industry showed a very weak negative correlation (-0.16), suggesting industries with more workers don't meaningfully pay less or more on average
- Change in employment numbers and change in average earnings showed no significant correlation (-0.03), suggesting industries adding jobs fastest weren't necessarily the ones with the biggest earnings growth.

## Limitations
- Analysis covers only the industries and time period included in the BLS source tables (not a full economy-wide view)
- Correlation findings (q5-6) show association, not causation — a relationship between two variables doesn't mean one caused the other 
- Data used to find correlation limited to one month

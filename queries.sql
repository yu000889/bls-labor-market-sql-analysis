--Q1: Top 10 industries by hourly earnings
select industry, "Oct. 2025 hourly" from earnings where "2022 NAICS Code" > 100 and "2022 NAICS Code" < 1000
order by "Oct. 2025 hourly" desc
limit 10;

--Q2: Top 10 industries by employment numbers
select industry, "Oct. 2025" from employment where "2022 NAICS Code" > 100 and "2022 NAICS Code" < 1000
order by "Oct. 2025" desc
limit 10;

--Q3: Change in employment by industry
select industry, "Oct. 2025" - "Dec. 2024" as "Change in employment (thousands)" from employment where "2022 NAICS Code" > 100 and "2022 NAICS Code" < 1000
order by "Change in employment (thousands)" desc;

--Q4: Change in average hourly earnings by industry
select industry, "Oct. 2025 hourly" - "Dec. 2024 hourly" as "Change in earnings" from earnings where "2022 NAICS Code" > 100 and "2022 NAICS Code" < 1000
order by "Change in earnings" desc;

--Q5: Hourly earnings vs. employment numbers
select employment.industry, "Oct. 2025", "Oct. 2025 hourly" from employment
join earnings on employment."2022 NAICS Code" = earnings."2022 NAICS Code"
where employment."2022 NAICS Code" > 100 and employment."2022 NAICS Code" < 1000;

--Q6: Change in hourly earnings vs. change in employment numbers
select employment.industry, "Oct. 2025" - "Dec. 2024" as "Change in employment", "Oct. 2025 hourly" - "Dec. 2024 hourly" as "Change in earnings" from employment
join earnings on employment."2022 NAICS Code" = earnings."2022 NAICS Code"
where employment."2022 NAICS Code" > 100 and employment."2022 NAICS Code" < 1000;

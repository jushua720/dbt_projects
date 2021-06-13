# dbt_projects

## Dataset
[Google Public Dataset Historical Air Quality](https://console.cloud.google.com/marketplace/product/epa/historical-air-quality) <br/><br/>
Tables:<br/>
- pm10_daily_summary<br/>
- pm25_frm_daily_summary <br/><br/>

## Goal
Provide pm10 and pm2.5 air quality status and trends for the US West Coast states (California, Oregon, Washington)

#### Questions to answer: <br/>
1 Total number of cities<br/>
What was the total number of cities for which the pm10 / pm2.5 values are presented<br/>

2 Most polluted cities<br/>
What was the number of cities for which the value of pm10 is bigger than 50<br/>

3 Identifying Hotspot<br/>
(For the given date) List all the cities that had pm10 value bigger than 50<br/>

4 Pollution ratio<br/>
What was the pm10 pollution ratio for the given month<br/>

5 Identifying specific day<br/>
On what day did the total number of cities with high level of pm10 (pm2.5) was the highest?<br/>

6 Finding days with low level of pm10 (pm2.5)<br/>
Identify the number of days (for each city) when the pm10 level didn’t cross the given threshold<br/>

7 Doubling rate<br/>
Find the dates on which the pm10 level increased by more than 10% compared to the previous day<br/><br/>


## Schema
<a href="https://drive.google.com/uc?export=view&id=1p16l_-XBjn2rJj-qY0ODJE_6WU6K9jtB"><img src="https://drive.google.com/uc?export=view&id=1p16l_-XBjn2rJj-qY0ODJE_6WU6K9jtB" style="width: 650px; max-width: 100%; height: auto" title="Click to enlarge picture" />

 

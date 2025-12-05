-- Write a SQL query to find the top 5 districts with the highest annual rainfall across India.
SELECT 
    *
FROM
    rainfall.district_rainfall
ORDER BY DISTRICT
LIMIT 5;

-- Write a query to find the average annual rainfall per state. Sort the results from highest to lowest
SELECT 
    STATE_UT_NAME, AVG(ANNUAL) AS AVG_ANNUAL_RAINFALL_PER_STATE
FROM
    rainfall.district_rainfall
GROUP BY STATE_UT_NAME
ORDER BY AVG(ANNUAL) DESC;

-- Calculate the percentage contribution of June–September rainfall (Jun-Sep) to the Annual rainfall for each district.
SELECT 
    STATE_UT_NAME,
    DISTRICT,
    ANNUAL,
    "Jun-Sep" AS Jun_Sep_Rainfall,
    ROUND(("Jun-Sep" / ANNUAL) * 100, 2) AS Jun_Sep_Contribution_Percentage
FROM 
    rainfall.district_rainfall;
    
-- Write a query to list all districts that receive more than 300 mm of rainfall in October.
SELECT 
    DISTRICT
FROM
    rainfall.district_rainfall
WHERE
    OCT > 300;
    
-- Write a query to find the average rainfall for each month across all districts in India.
SELECT 
    ROUND(AVG('JAN'), 2) AS AVG_JAN,
    ROUND(AVG('FEB'), 2) AS AVG_FEB,
    ROUND(AVG('MAR'), 2) AS AVG_MAR,
    ROUND(AVG('APR'), 2) AS AVG_APR,
    ROUND(AVG('MAY'), 2) AS AVG_MAY,
    ROUND(AVG('JUN'), 2) AS AVG_JUN,
    ROUND(AVG('JUL'), 2) AS AVG_JUL,
    ROUND(AVG('AUG'), 2) AS AVG_AUG,
    ROUND(AVG('SEP'), 2) AS AVG_SEP,
    ROUND(AVG('OCT'), 2) AS AVG_OCT,
    ROUND(AVG('NOV'), 2) AS AVG_NOV,
    ROUND(AVG('DEC'), 2) AS AVG_DEC
FROM
    rainfall.district_rainfall;











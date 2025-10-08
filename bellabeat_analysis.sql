-- Bellabeat Smart Device Analysis (Concise SQL Version)
-- Author: Carly Kalonji
-- Purpose: Clean, prepare, and analyse Fitbit smart device data

-- ----------------------
-- 1. Data Cleaning & Preparation
-- ----------------------
DELETE FROM daily_activity
WHERE TotalSteps < 0 OR Calories < 0;

DELETE FROM daily_sleep
WHERE TotalMinutesAsleep <= 0 OR TotalTimeInBed <= 0;

ALTER TABLE daily_activity ALTER COLUMN ActivityDate DATE NOT NULL;
ALTER TABLE daily_sleep ALTER COLUMN SleepDate DATE NOT NULL;

WITH CTE AS (
    SELECT Id, ActivityDate,
           ROW_NUMBER() OVER(PARTITION BY Id, ActivityDate ORDER BY Id) AS rn
    FROM daily_activity
)
DELETE FROM CTE WHERE rn > 1;

-- ----------------------
-- 2. Data Aggregation & Transformation
-- ----------------------
CREATE TABLE merged_data AS
SELECT a.Id, a.ActivityDate AS Date,
       a.TotalSteps, a.Calories,
       s.TotalMinutesAsleep, s.TotalTimeInBed,
       CAST(s.TotalMinutesAsleep AS DECIMAL)/s.TotalTimeInBed AS SleepEfficiency
FROM daily_activity a
INNER JOIN daily_sleep s
ON a.Id = s.Id AND a.ActivityDate = s.SleepDate;

SELECT Id, Date, TotalSteps,
       AVG(TotalSteps) OVER(PARTITION BY Id ORDER BY Date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS Rolling7DayAvg
FROM merged_data;

-- ----------------------
-- 3. Analysis Queries
-- ----------------------
SELECT Id, Date, TotalSteps,
       CASE
           WHEN TotalSteps >= 10000 THEN 'Highly Active'
           WHEN TotalSteps >= 7500 THEN 'Moderately Active'
           WHEN TotalSteps >= 5000 THEN 'Lightly Active'
           ELSE 'Sedentary'
       END AS ActivitySegment
FROM merged_data;

SELECT AVG(TotalSteps) AS AvgSteps,
       AVG(Calories) AS AvgCalories,
       AVG(TotalMinutesAsleep) AS AvgSleepMinutes
FROM merged_data;

SELECT CORR(TotalSteps, SleepEfficiency) AS Steps_Sleep_Correlation
FROM merged_data;

SELECT DATEPART(HOUR, DateTime) AS HourOfDay, AVG(TotalSteps) AS AvgSteps
FROM hourly_activity
GROUP BY DATEPART(HOUR, DateTime)
ORDER BY HourOfDay;

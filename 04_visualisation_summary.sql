-- Final Queries for Tableau
-- Summary tables for Tableau dashboard
SELECT
  ActivityDate,
  AVG(TotalSteps) AS AvgSteps,
  AVG(Calories) AS AvgCalories,
  AVG(TotalMinutesAsleep) AS AvgSleep
FROM merged_activity_sleep
GROUP BY ActivityDate
ORDER BY ActivityDate;

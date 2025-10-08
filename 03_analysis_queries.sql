-- Analysis Queries
-- Correlations and trend analysis
SELECT
  ROUND(CORR(TotalSteps, Calories), 2) AS StepCalorieCorrelation
FROM daily_summary;

-- Steps vs Sleep trend
SELECT
  AVG(TotalSteps) AS AvgSteps,
  AVG(TotalMinutesAsleep) AS AvgSleep
FROM merged_activity_sleep
GROUP BY Id;

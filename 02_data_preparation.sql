-- Data Preparation Script
-- Merging and transforming datasets for analysis
CREATE TABLE daily_summary AS
SELECT
  Id,
  ActivityDate,
  TotalSteps,
  TotalDistance,
  Calories,
  SedentaryMinutes + LightlyActiveMinutes + FairlyActiveMinutes + VeryActiveMinutes AS TotalActiveMinutes
FROM daily_activity;

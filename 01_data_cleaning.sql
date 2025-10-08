-- Data Cleaning Script
-- Standardising date formats, removing duplicates, handling missing values
ALTER TABLE daily_activity
ADD PRIMARY KEY (Id, ActivityDate);

DELETE FROM daily_activity
WHERE Id IS NULL OR TotalSteps IS NULL;

UPDATE daily_activity
SET ActivityDate = CONVERT(DATE, ActivityDate, 101);

-- Remove impossible values
DELETE FROM daily_activity
WHERE TotalSteps < 0 OR Calories < 0;

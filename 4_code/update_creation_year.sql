-- Step 1: Extract year and assign to creation_year
UPDATE mission_point
SET creation_year = substr(creation_timestamp, -4);

-- Step 2: Remove year from creation_timestamp
UPDATE mission_point
SET creation_timestamp = substr(creation_timestamp, 1, length(creation_timestamp) - 5);
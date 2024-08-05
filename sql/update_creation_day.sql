-- Step 1: Assign the remaining value (day) to creation_day
UPDATE mission_point
SET creation_day = creation_timestamp;

-- Step 2 (Optional): Clear the creation_timestamp column
UPDATE mission_point
SET creation_timestamp = NULL;

-- Alternatively, if you want to drop the column entirely:
-- ALTER TABLE mission_point DROP COLUMN creation_timestamp;
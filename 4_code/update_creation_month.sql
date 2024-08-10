-- Step 1: Extract month and assign to creation_month
UPDATE mission_point
SET creation_month = CASE 
    WHEN instr(creation_timestamp, '/') = 2 THEN substr(creation_timestamp, 1, 1)
    ELSE substr(creation_timestamp, 1, 2)
END;

-- Step 2: Remove month and slash from creation_timestamp
UPDATE mission_point
SET creation_timestamp = CASE 
    WHEN instr(creation_timestamp, '/') = 2 THEN substr(creation_timestamp, 3)
    ELSE substr(creation_timestamp, 4)
END;
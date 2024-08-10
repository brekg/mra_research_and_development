-- Step 1: Extract time portion and assign to creation_time
UPDATE mission_point
SET creation_time = trim(substr(creation_timestamp, instr(creation_timestamp, ' ')));

-- Step 2: Remove time portion from creation_timestamp
UPDATE mission_point
SET creation_timestamp = substr(creation_timestamp, 1, instr(creation_timestamp, ' ') - 1);

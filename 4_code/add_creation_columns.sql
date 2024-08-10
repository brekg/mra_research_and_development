ALTER TABLE mission_point ADD COLUMN creation_year INTEGER;
ALTER TABLE mission_point ADD COLUMN creation_month INTEGER;
ALTER TABLE mission_point ADD COLUMN creation_day INTEGER;
ALTER TABLE mission_point ADD COLUMN creation_time TEXT;
ALTER TABLE mission_point ADD COLUMN creation_timestamp TEXT;
ALTER TABLE mission_point ADD COLUMN creation_timestamp_iso TEXT;
UPDATE mission_point SET creation_timestamp = CreationDate;

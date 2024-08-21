SELECT GlobalID, COUNT(*) as count
FROM mission_point
GROUP BY GlobalID
HAVING COUNT(*) > 1;

/*
SELECT GlobalID, COUNT(*) as count
FROM point_found
GROUP BY GlobalID
HAVING COUNT(*) > 1;
*/
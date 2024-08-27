-- See if there is a correlation between form version and the null joins
/*
SELECT TeamName, Form_Version, COUNT(*) as Count
FROM v_joined_on_globalid
WHERE ParentGlobalID IS NOT NULL
GROUP BY TeamName
ORDER BY Form_Version, TeamName ASC;
*/

SELECT TeamName, Form_Version, COUNT(*) as Count
FROM v_joined_on_globalid
WHERE ParentGlobalID IS NULL
GROUP BY TeamName
ORDER BY Form_Version, TeamName ASC;


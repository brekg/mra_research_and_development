-- See if there is a correlation between teams and the null joins

SELECT TeamName, COUNT(*) as Count
FROM v_joined_on_globalid
WHERE ParentGlobalID IS NOT NULL
GROUP BY TeamName
ORDER BY TeamName ASC;


SELECT TeamName, COUNT(*) as Count
FROM v_joined_on_globalid
WHERE ParentGlobalID IS NULL
GROUP BY TeamName
ORDER BY TeamName ASC;

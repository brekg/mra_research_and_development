SELECT 
    strftime('%Y', creation_timestamp_iso) as Year,
    strftime('%m', creation_timestamp_iso) as Month,
    TeamName,
    COUNT(*) as Count
FROM v_joined_on_globalid
WHERE ParentGlobalID IS NOT NULL
GROUP BY Year, Month, TeamName
ORDER BY Year, Month, TeamName, Count DESC;

SELECT 
    strftime('%Y', creation_timestamp_iso) as Year,
    strftime('%m', creation_timestamp_iso) as Month,
    TeamName,
    COUNT(*) as Count
FROM v_joined_on_globalid
WHERE ParentGlobalID IS NULL
GROUP BY Year, Month, TeamName
ORDER BY Year, Month, TeamName, Count DESC;
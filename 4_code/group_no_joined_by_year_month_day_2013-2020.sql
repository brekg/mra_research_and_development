SELECT 
    strftime('%Y', creation_timestamp_iso) AS year,
    strftime('%m', creation_timestamp_iso) AS month,
	strftime('%d', creation_timestamp_iso) AS day,
    COUNT(*) AS row_count
FROM 
    v_joined_on_globalid
WHERE 
    ParentGlobalID IS NULL
GROUP BY 
    year, month, day
ORDER BY 
    year, month, day;
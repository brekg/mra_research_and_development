UPDATE mission_point
SET iso_timestamp = 
    creation_year || '-' ||
    substr('0' || creation_month, -2) || '-' ||
    substr('0' || creation_day, -2) || 'T' ||
    CASE 
        WHEN substr(creation_time, -2) = 'PM' AND substr(creation_time, 1, 2) != '12' 
            THEN (substr(creation_time, 1, 2) + 12) || substr(creation_time, 3, 6)
        WHEN substr(creation_time, -2) = 'AM' AND substr(creation_time, 1, 2) = '12'
            THEN '00' || substr(creation_time, 3, 6)
        ELSE substr(creation_time, 1, 8)
    END;
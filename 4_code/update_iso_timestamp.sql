UPDATE mission_point
SET creation_timestamp_iso = 
    creation_year || '-' ||
    substr('0' || creation_month, -2) || '-' ||
    substr('0' || creation_day, -2) || 'T' ||
    CASE 
        WHEN substr(creation_time, -2) = 'PM' AND substr(creation_time, 1, 2) != '12' 
            THEN substr('0' || (substr(creation_time, 1, 
                 CASE WHEN substr(creation_time, 2, 1) = ':' THEN 1 ELSE 2 END) + 12), -2) 
                 || substr(creation_time, instr(creation_time, ':'), 6)
        WHEN substr(creation_time, -2) = 'AM' AND substr(creation_time, 1, 2) = '12'
            THEN '00' || substr(creation_time, instr(creation_time, ':'), 6)
        ELSE 
            substr('0' || substr(creation_time, 1, 
                 CASE WHEN substr(creation_time, 2, 1) = ':' THEN 1 ELSE 2 END), -2) 
            || substr(creation_time, instr(creation_time, ':'), 6)
    END;
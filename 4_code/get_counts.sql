/* Counts on join columns */
--SELECT count(*) FROM mission_point where GlobalID is NOT NULL--16573
--SELECT count(*) FROM mission_point where GlobalID is NULL--0
--SELECT count(*) FROM point_found where ParentGlobalID is NOT NULL--2210
--SELECT count(*) FROM point_found where ParentGlobalID is NULL--107



---------------------------------------------------------------------------
/* Count mission_point.GlobalID joined */
--SELECT count(*) FROM v_joined_on_globalid
--WHERE GlobalID is NOT NULL AND ParentGlobalID is NOT NULL

/* Count mission_point.GlobalID no join */
--SELECT count(*) FROM v_joined_on_globalid 
--WHERE GlobalID is NOT NULL AND ParentGlobalID is NULL
---------------------------------------------------------------------------
/* Count mission_point.Incident_UUID joined */
--SELECT count(*) FROM v_joined_on_incident_uuid
--WHERE Incident_UUID is NOT NULL AND Linked_Incident_UUID is NOT NULL

/* Count mission_point.Incident_UUID no join */
--SELECT count(*) FROM v_joined_on_incident_uuid
--WHERE Incident_UUID is NOT NULL AND Linked_Incident_UUID is NULL
---------------------------------------------------------------------------
/* Get column counts */
--PRAGMA table_info(TABLE_NAME); 
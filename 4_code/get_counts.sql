/* Counts on join columns */
--SELECT count(*) FROM mission_point where GlobalID is NOT NULL--16573
--SELECT count(*) FROM mission_point where GlobalID is NULL--0
--SELECT count(*) FROM point_found where ParentGlobalID is NOT NULL--2210
--SELECT count(*) FROM point_found where ParentGlobalID is NULL--107
---------------------------------------------------------------------------
/* Counts on GlobalID join */
--SELECT count(*) FROM v_joined_on_globalid
--WHERE GlobalID is NOT NULL AND ParentGlobalID is NOT NULL--1951

--SELECT count(*) FROM v_joined_on_globalid 
--WHERE GlobalID is NOT NULL AND ParentGlobalID is NULL--12641
---------------------------------------------------------------------------
/* Counts on Incident_UUID join */
--SELECT count(*) FROM v_joined_on_incident_uuid
--WHERE Incident_UUID is NOT NULL AND Linked_Incident_UUID is NOT NULL--1241

--SELECT count(*) FROM v_joined_on_incident_uuid
--WHERE Incident_UUID is NOT NULL AND Linked_Incident_UUID is NULL--4064
---------------------------------------------------------------------------

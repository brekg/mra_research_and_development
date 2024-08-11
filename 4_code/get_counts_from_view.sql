-- v_joined_on_globalid
SELECT count(*) FROM v_joined_on_globalid WHERE GlobalID is NOT NULL;
SELECT count(*) FROM v_joined_on_globalid WHERE ParentGlobalID is NOT NULL;
SELECT count(*) FROM v_joined_on_globalid WHERE GlobalID and ParentGlobalID is NOT NULL;

-- v_joined_on_incident_uuid
SELECT count(*) FROM v_joined_on_incident_uuid WHERE Incident_UUID is NOT NULL;
SELECT count(*) FROM v_joined_on_incident_uuid WHERE Linked_Incident_UUID is NOT NULL;
SELECT count(*) FROM v_joined_on_incident_uuid WHERE Incident_UUID and Linked_Incident_UUID is NOT NULL;
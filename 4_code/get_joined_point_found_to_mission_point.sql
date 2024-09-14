CREATE VIEW v_point_found_join_to_mission_point AS
-- Points that have a match (join exists)
SELECT
MP.GlobalID,
PF.ParentGlobalID,
PF.FoundDate,
PF.Found_UUID,
PF.Linked_Incident_UUID,
PF.Linked_Team,
PF.Linked_Incident_Date,
PF.CreationDate,
PF.Creator,
PF.x,
PF.y
FROM point_found PF
INNER JOIN mission_point MP ON PF.ParentGlobalID = MP.GlobalID
WHERE MP.GlobalID IS NOT NULL
--UNION ALL

/*
-- Points that don't have a match (join does not exist)
CREATE VIEW v_point_found_no_join_to_mission_point AS
SELECT
MP.GlobalID,
PF.ParentGlobalID,
PF.FoundDate,
PF.Found_UUID,
PF.Linked_Incident_UUID,
PF.Linked_Team,
PF.Linked_Incident_Date,
PF.CreationDate,
PF.Creator,
PF.x,
PF.y
FROM point_found PF
LEFT JOIN mission_point MP ON PF.ParentGlobalID = MP.GlobalID
WHERE MP.GlobalID IS NULL
ORDER BY MP.GlobalID, PF.ParentGlobalID DESC;
*/
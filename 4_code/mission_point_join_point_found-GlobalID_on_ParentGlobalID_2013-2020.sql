-- Join mission points to point found on mra.GlobalID = pf.ParentGlobalID
CREATE VIEW v_joined_on_globalid AS
SELECT 
  mp.GlobalID,
  pf.ParentGlobalID,
  mp.Incident_UUID,
  pf.Linked_Incident_UUID,
  mp.IncidentNumber,
  mp.IncidentStartDateandTime,
  mp.TeamName,
  mp.CreationDate,
  mp.creation_timestamp_iso
FROM 
  mission_point mp
LEFT JOIN 
  point_found pf ON mp.GlobalID = pf.ParentGlobalID
GROUP BY 
  creation_timestamp_iso
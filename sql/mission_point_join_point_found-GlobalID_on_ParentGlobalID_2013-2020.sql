-- Join mission points to point found on mra.GlobalID = pf.ParentGlobalID
SELECT 
  mra.Incident_UUID,
  pf.Linked_Incident_UUID,
  mra.IncidentNumber,
  mra.IncidentStartDateandTime,
  mra.TeamName,
  mra.CreationDate,
  mra.creation_timestamp_iso
FROM 
  mission_point mra
LEFT JOIN 
  point_found pf ON mra.GlobalID = pf.ParentGlobalID
GROUP BY 
  creation_timestamp_iso
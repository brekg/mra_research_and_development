-- Join mission points to point found on Incident_UUID = Linked_Incident_UUID
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
  point_found pf ON mra.Incident_UUID = pf.Linked_Incident_UUID
GROUP BY 
  creation_timestamp_iso
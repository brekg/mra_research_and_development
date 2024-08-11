-- Join mission points to point found on Incident_UUID = Linked_Incident_UUID
SELECT 
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
  point_found pf ON mp.Incident_UUID = pf.Linked_Incident_UUID
GROUP BY 
  creation_timestamp_iso
SELECT EventID, COUNT(*) AS EventCount
FROM security.evtx
WHERE EventID = 4625
GROUP BY EventID
ORDER BY EventCount DESC

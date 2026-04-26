SELECT TimeGenerated, EventID, Message
FROM security.evtx
WHERE EventID IN (4624,4625)
ORDER BY TimeGenerated DESC

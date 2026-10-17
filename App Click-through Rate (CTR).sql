SELECT 
 app_id,
   CAST (ROUND(100.0*SUM(
      CASE 
        WHEN event_type = 'click' THEN 1
                                  ELSE 0
      END 
    )/
    NULLIF( SUM(
      CASE 
        WHEN event_type = 'impression' THEN 1            
		                               ELSE 0
      END 
    ),0),2)AS DECIMAL(10,2)) AS CTR
FROM events
WHERE YEAR(timestamp)=2022
GROUP BY app_id\
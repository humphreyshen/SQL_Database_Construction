SELECT
event_name,
event_year,
event_price 
FROM(SELECT
    C1.id,
    C1.zh_name,
    C1.email,
    C1.bye,
    C3.event_id,
    C3.event_name,
    C3.event_year,
    C3.event_price
	FROM dDt_alumnidb_personal AS C1
	INNER JOIN dDt_alumnidb_event_participant AS C2
	ON C1.zh_name=C2.zh_name or C1.email=C2.email
	INNER JOIN dDt_alumnidb_event AS C3
	ON C3.event_id=C2.event_id
	WHERE C1.id='' AND C1.bye=1)
AS C4;
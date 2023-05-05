-- Script creates a view need_meeting that lists all
-- students that have a score under 80

CREATE VIEW need_meeting AS
SELECT s.name
FROM students AS s
WHERE s.score < 80
AND (s.last_meeting IS NULL OR s.last_meeting < ADDDATE(CURDATE(), INTERVAL -1 MONTH));

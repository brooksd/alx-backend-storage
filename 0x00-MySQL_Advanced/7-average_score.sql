-- Script creates a stored procedure ComputeAverageScoreForUser

DELIMITER $$
CREATE PROCEDURE ComputeAverageScoreForUser (user_id INT)
BEGIN
    DECLARE avg FLOAT;

    SELECT AVG(corrections.score) INTO avg
    FROM corrections
    WHERE corrections.user_id = user_id;

    UPDATE users
    SET average_score = avg
    WHERE id = user_id;
END; $$
DELIMITER ;

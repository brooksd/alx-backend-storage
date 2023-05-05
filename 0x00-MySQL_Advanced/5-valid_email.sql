
CREATE TRIGGER updater
BEFORE UPDATE
ON users
FOR EACH ROW
SET NEW.valid_email = IF(NEW.email != OLD.email, 0, OLD.valid_email);

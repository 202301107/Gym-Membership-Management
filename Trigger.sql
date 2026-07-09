CREATE OR REPLACE FUNCTION prevent_trainer_double_booking()
RETURNS TRIGGER AS $$
BEGIN
    IF EXISTS (
        SELECT 1 FROM Training_Schedule
        WHERE trainer_id = NEW.trainer_id
          AND sess_date = NEW.sess_date
          AND sess_id <> COALESCE(NEW.sess_id, -1)
          AND sess_time = NEW.sess_time
    ) THEN
        RAISE EXCEPTION
            'Trainer % already has a session at % on %',
            NEW.trainer_id, NEW.sess_time, NEW.sess_date;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_prevent_double_booking
BEFORE INSERT OR UPDATE ON Training_Schedule
FOR EACH ROW EXECUTE FUNCTION prevent_trainer_double_booking();

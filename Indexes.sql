CREATE INDEX idx_training_schedule_trainer_date ON Training_Schedule(trainer_id, sess_date);
CREATE INDEX idx_fee_gym_date ON Fee(gym_id, fee_date);
CREATE INDEX idx_member_gym ON Member(gym_id);

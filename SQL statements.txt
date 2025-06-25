
-- QUERY 1: List all members and the gyms they belong to
SELECT memb_name, gym_id
FROM Member;

-- QUERY 2: Get the names and contact info of trainers assigned to a specific gym
SELECT trainer_name, trainer_contact
FROM Trainer
WHERE gym_id = 1;

-- QUERY 3: Find all training sessions scheduled by a specific trainer
SELECT sess_date, sess_time, sess_details
FROM Training_Schedule
WHERE trainer_id = 2;

-- QUERY 4: Show members along with their assigned trainer names
SELECT m.memb_name, t.trainer_name
FROM Member m
JOIN Member_Trained_By mtb ON m.memb_id = mtb.memb_id
JOIN Trainer t ON mtb.trainer_id = t.trainer_id;

-- QUERY 5: List the facilities used by a specific member
SELECT f.facility_name
FROM Facility f
JOIN Member_Uses_Facility muf ON f.facility_id = muf.facility_id
WHERE muf.memb_id = 3;

-- QUERY 6: Find all staff working at a specific gym who use a particular facility
SELECT s.staff_name
FROM Staff s
JOIN Staff_Uses_Facility suf ON s.staff_id = suf.staff_id
WHERE s.gym_id = 1 AND suf.facility_id = 2;

-- QUERY 7: Show all training sessions along with the trainer's name and the gym they're in
SELECT ts.sess_date, ts.sess_time, t.trainer_name, ts.gym_id
FROM Training_Schedule ts
JOIN Trainer t ON ts.trainer_id = t.trainer_id;

-- QUERY 8: Count how many members are assigned to each trainer
SELECT t.trainer_name, COUNT(mtb.memb_id) AS member_count
FROM Trainer t
JOIN Member_Trained_By mtb ON t.trainer_id = mtb.trainer_id
GROUP BY t.trainer_name;

-- QUERY 9: Retrieve attendance logs with member names
SELECT a.member_id, m.memb_name, a.gym_id
FROM Attendance_Log a
JOIN Member m ON a.member_id = m.memb_id;

-- QUERY 10: Show total fees collected by each gym
SELECT gym_id, SUM(fee_amt) AS total_collected
FROM Fee
GROUP BY gym_id;

-- QUERY 11: Find the member(s) who are using the most facilities
SELECT m.memb_id, m.memb_name, COUNT(muf.facility_id) AS facility_count
FROM Member m
JOIN Member_Uses_Facility muf ON m.memb_id = muf.memb_id
GROUP BY m.memb_id, m.memb_name
HAVING COUNT(muf.facility_id) = (
  SELECT MAX(facility_count) FROM (
    SELECT COUNT(facility_id) AS facility_count
    FROM Member_Uses_Facility
    GROUP BY memb_id
  ) AS counts
);

-- QUERY 12: List all trainers who don’t currently have any members assigned
SELECT t.trainer_id, t.trainer_name
FROM Trainer t
LEFT JOIN Member_Trained_By mtb ON t.trainer_id = mtb.trainer_id
WHERE mtb.memb_id IS NULL;

-- QUERY 13: Show members who have never attended the gym
SELECT m.memb_id, m.memb_name
FROM Member m
LEFT JOIN Attendance_Log al ON m.memb_id = al.member_id
WHERE al.member_id IS NULL;

-- QUERY 14: List the top 3 gyms with the highest total fee collection
SELECT gym_id, SUM(fee_amt) AS total_collected
FROM Fee
GROUP BY gym_id
ORDER BY total_collected DESC
LIMIT 3;

-- QUERY 15: Find trainers who have conducted sessions in more than one gym
SELECT trainer_id, COUNT(DISTINCT gym_id) AS gym_count
FROM Training_Schedule
GROUP BY trainer_id
HAVING COUNT(DISTINCT gym_id) > 1;

-- QUERY 16: Display each member’s name and usage level based on facility count
SELECT m.memb_name,
  CASE
    WHEN COUNT(muf.facility_id) BETWEEN 1 AND 2 THEN 'Beginner'
    WHEN COUNT(muf.facility_id) BETWEEN 3 AND 4 THEN 'Intermediate'
    WHEN COUNT(muf.facility_id) >= 5 THEN 'Advanced'
    ELSE 'None'
  END AS usage_level
FROM Member m
LEFT JOIN Member_Uses_Facility muf ON m.memb_id = muf.memb_id
GROUP BY m.memb_id, m.memb_name;

-- QUERY 17: List all gyms that have no staff assigned
SELECT g.gym_id
FROM Gym g
LEFT JOIN Staff s ON g.gym_id = s.gym_id
WHERE s.staff_id IS NULL;

-- QUERY 18: Find the average fee collected per gym per month
SELECT gym_id,
       DATE_TRUNC('month', fee_date) AS month,
       AVG(fee_amt) AS avg_fee
FROM Fee
GROUP BY gym_id, DATE_TRUNC('month', fee_date)
ORDER BY gym_id, month;

-- QUERY 19: List facilities that are used by both members and staff
SELECT DISTINCT f.facility_id, f.facility_name
FROM Facility f
JOIN Member_Uses_Facility muf ON f.facility_id = muf.facility_id
JOIN Staff_Uses_Facility suf ON f.facility_id = suf.facility_id;

-- QUERY 20: Get each gym’s member count, trainer count, and staff count
SELECT g.gym_id,
       COUNT(DISTINCT m.memb_id) AS member_count,
       COUNT(DISTINCT t.trainer_id) AS trainer_count,
       COUNT(DISTINCT s.staff_id) AS staff_count
FROM Gym g
LEFT JOIN Member m ON g.gym_id = m.gym_id
LEFT JOIN Trainer t ON g.gym_id = t.gym_id
LEFT JOIN Staff s ON g.gym_id = s.gym_id
GROUP BY g.gym_id;

-- QUERY 21: Get a list of members, their assigned trainers, and the gym name they both belong to
SELECT m.memb_name, t.trainer_name, m.gym_id
FROM Member m
JOIN Member_Trained_By mtb ON m.memb_id = mtb.memb_id
JOIN Trainer t ON mtb.trainer_id = t.trainer_id
WHERE m.gym_id = t.gym_id;

-- QUERY 22: Find facilities used only by staff but not by any members
SELECT f.facility_id, f.facility_name
FROM Facility f
JOIN Staff_Uses_Facility suf ON f.facility_id = suf.facility_id
WHERE f.facility_id NOT IN (
  SELECT facility_id FROM Member_Uses_Facility
);

-- QUERY 23: List staff members who work in gyms that collected more than $10,000 in total fees
SELECT s.staff_name, s.gym_id
FROM Staff s
WHERE s.gym_id IN (
  SELECT gym_id FROM Fee
  GROUP BY gym_id
  HAVING SUM(fee_amt) > 10000
);

-- QUERY 24: Show all training sessions that are longer than the average session duration
SELECT sess_id, sess_date, sess_duration
FROM Training_Schedule
WHERE sess_duration > (
  SELECT AVG(sess_duration) FROM Training_Schedule
);

-- QUERY 25: Find members who attend a gym but are not using any facility
SELECT m.memb_id, m.memb_name
FROM Member m
JOIN Attendance_Log al ON m.memb_id = al.member_id
LEFT JOIN Member_Uses_Facility muf ON m.memb_id = muf.memb_id
WHERE muf.facility_id IS NULL;

-- QUERY 26: Identify staff who share at least one facility with another staff member
SELECT DISTINCT s1.staff_id, s1.staff_name
FROM Staff s1
JOIN Staff_Uses_Facility suf1 ON s1.staff_id = suf1.staff_id
JOIN Staff_Uses_Facility suf2 ON suf1.facility_id = suf2.facility_id
WHERE s1.staff_id != suf2.staff_id;

-- QUERY 27: Get the most used facility by members (based on usage count)
SELECT f.facility_name, COUNT(*) AS usage_count
FROM Member_Uses_Facility muf
JOIN Facility f ON muf.facility_id = f.facility_id
GROUP BY f.facility_name
ORDER BY usage_count DESC
LIMIT 1;

-- QUERY 28: Count how many sessions each trainer has conducted, along with total session hours
SELECT t.trainer_name, COUNT(ts.sess_id) AS session_count, 
       SUM(ts.sess_duration) AS total_hours
FROM Trainer t
JOIN Training_Schedule ts ON t.trainer_id = ts.trainer_id
GROUP BY t.trainer_name;

-- QUERY 29: List gyms that have at least 1 trainer, 1 staff, and 1 member
SELECT g.gym_id
FROM Gym g
WHERE EXISTS (SELECT 1 FROM Member m WHERE m.gym_id = g.gym_id)
  AND EXISTS (SELECT 1 FROM Trainer t WHERE t.gym_id = g.gym_id)
  AND EXISTS (SELECT 1 FROM Staff s WHERE s.gym_id = g.gym_id);

-- QUERY 30: Display member names and how many days they've attended the gym
SELECT m.memb_name, COUNT(*) AS attendance_days
FROM Member m
JOIN Attendance_Log al ON m.memb_id = al.member_id
GROUP BY m.memb_name;

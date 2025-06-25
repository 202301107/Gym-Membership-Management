-- Gym INSERTS
INSERT INTO Gym (gym_id) VALUES (1);
INSERT INTO Gym (gym_id) VALUES (2);
INSERT INTO Gym (gym_id) VALUES (3);
INSERT INTO Gym (gym_id) VALUES (4);
INSERT INTO Gym (gym_id) VALUES (5);

-- Facility INSERTS
INSERT INTO Facility (facility_id, facility_name) VALUES (1, 'Facility1');
INSERT INTO Facility (facility_id, facility_name) VALUES (2, 'Facility2');
INSERT INTO Facility (facility_id, facility_name) VALUES (3, 'Facility3');
INSERT INTO Facility (facility_id, facility_name) VALUES (4, 'Facility4');
INSERT INTO Facility (facility_id, facility_name) VALUES (5, 'Facility5');
INSERT INTO Facility (facility_id, facility_name) VALUES (6, 'Facility6');
INSERT INTO Facility (facility_id, facility_name) VALUES (7, 'Facility7');
INSERT INTO Facility (facility_id, facility_name) VALUES (8, 'Facility8');
INSERT INTO Facility (facility_id, facility_name) VALUES (9, 'Facility9');
INSERT INTO Facility (facility_id, facility_name) VALUES (10, 'Facility10');

-- Member INSERTS
INSERT INTO Member (memb_id, memb_name, memb_address, memb_contact, memb_email, gym_id)
    VALUES (1, 'Member1', 'Address 1', '+1-828-8687', 'member1@mail.com', 3);
INSERT INTO Member (memb_id, memb_name, memb_address, memb_contact, memb_email, gym_id)
    VALUES (2, 'Member2', 'Address 2', '+1-760-1092', 'member2@mail.com', 1);
INSERT INTO Member (memb_id, memb_name, memb_address, memb_contact, memb_email, gym_id)
    VALUES (3, 'Member3', 'Address 3', '+1-307-1782', 'member3@mail.com', 2);
INSERT INTO Member (memb_id, memb_name, memb_address, memb_contact, memb_email, gym_id)
    VALUES (4, 'Member4', 'Address 4', '+1-176-4640', 'member4@mail.com', 2);
INSERT INTO Member (memb_id, memb_name, memb_address, memb_contact, memb_email, gym_id)
    VALUES (5, 'Member5', 'Address 5', '+1-681-7800', 'member5@mail.com', 1);
INSERT INTO Member (memb_id, memb_name, memb_address, memb_contact, memb_email, gym_id)
    VALUES (6, 'Member6', 'Address 6', '+1-135-8351', 'member6@mail.com', 5);
INSERT INTO Member (memb_id, memb_name, memb_address, memb_contact, memb_email, gym_id)
    VALUES (7, 'Member7', 'Address 7', '+1-391-2791', 'member7@mail.com', 4);
INSERT INTO Member (memb_id, memb_name, memb_address, memb_contact, memb_email, gym_id)
    VALUES (8, 'Member8', 'Address 8', '+1-671-9426', 'member8@mail.com', 2);
INSERT INTO Member (memb_id, memb_name, memb_address, memb_contact, memb_email, gym_id)
    VALUES (9, 'Member9', 'Address 9', '+1-413-7144', 'member9@mail.com', 3);
INSERT INTO Member (memb_id, memb_name, memb_address, memb_contact, memb_email, gym_id)
    VALUES (10, 'Member10', 'Address 10', '+1-225-6506', 'member10@mail.com', 4);
INSERT INTO Member (memb_id, memb_name, memb_address, memb_contact, memb_email, gym_id)
    VALUES (11, 'Member11', 'Address 11', '+1-603-1027', 'member11@mail.com', 2);
INSERT INTO Member (memb_id, memb_name, memb_address, memb_contact, memb_email, gym_id)
    VALUES (12, 'Member12', 'Address 12', '+1-805-3585', 'member12@mail.com', 1);
INSERT INTO Member (memb_id, memb_name, memb_address, memb_contact, memb_email, gym_id)
    VALUES (13, 'Member13', 'Address 13', '+1-413-6628', 'member13@mail.com', 2);
INSERT INTO Member (memb_id, memb_name, memb_address, memb_contact, memb_email, gym_id)
    VALUES (14, 'Member14', 'Address 14', '+1-348-1570', 'member14@mail.com', 2);
INSERT INTO Member (memb_id, memb_name, memb_address, memb_contact, memb_email, gym_id)
    VALUES (15, 'Member15', 'Address 15', '+1-614-4786', 'member15@mail.com', 4);
INSERT INTO Member (memb_id, memb_name, memb_address, memb_contact, memb_email, gym_id)
    VALUES (16, 'Member16', 'Address 16', '+1-373-6431', 'member16@mail.com', 3);
INSERT INTO Member (memb_id, memb_name, memb_address, memb_contact, memb_email, gym_id)
    VALUES (17, 'Member17', 'Address 17', '+1-633-7673', 'member17@mail.com', 1);
INSERT INTO Member (memb_id, memb_name, memb_address, memb_contact, memb_email, gym_id)
    VALUES (18, 'Member18', 'Address 18', '+1-593-8399', 'member18@mail.com', 2);
INSERT INTO Member (memb_id, memb_name, memb_address, memb_contact, memb_email, gym_id)
    VALUES (19, 'Member19', 'Address 19', '+1-893-2511', 'member19@mail.com', 5);
INSERT INTO Member (memb_id, memb_name, memb_address, memb_contact, memb_email, gym_id)
    VALUES (20, 'Member20', 'Address 20', '+1-197-5837', 'member20@mail.com', 3);

-- Trainer INSERTS
INSERT INTO Trainer (trainer_id, trainer_name, trainer_contact, trainer_address, gym_id)
    VALUES (1, 'Trainer1', '+1-118-2921', 'Trainer Address 1', 2);
INSERT INTO Trainer (trainer_id, trainer_name, trainer_contact, trainer_address, gym_id)
    VALUES (2, 'Trainer2', '+1-297-5236', 'Trainer Address 2', 5);
INSERT INTO Trainer (trainer_id, trainer_name, trainer_contact, trainer_address, gym_id)
    VALUES (3, 'Trainer3', '+1-923-6430', 'Trainer Address 3', 5);
INSERT INTO Trainer (trainer_id, trainer_name, trainer_contact, trainer_address, gym_id)
    VALUES (4, 'Trainer4', '+1-255-5412', 'Trainer Address 4', 4);
INSERT INTO Trainer (trainer_id, trainer_name, trainer_contact, trainer_address, gym_id)
    VALUES (5, 'Trainer5', '+1-658-5097', 'Trainer Address 5', 1);

-- Staff INSERTS
INSERT INTO Staff (staff_id, staff_name, staff_address, staff_contact, gym_id)
    VALUES (1, 'Staff1', 'Staff Address 1', '+1-215-5237', 1);
INSERT INTO Staff (staff_id, staff_name, staff_address, staff_contact, gym_id)
    VALUES (2, 'Staff2', 'Staff Address 2', '+1-333-2075', 4);
INSERT INTO Staff (staff_id, staff_name, staff_address, staff_contact, gym_id)
    VALUES (3, 'Staff3', 'Staff Address 3', '+1-468-8870', 4);
INSERT INTO Staff (staff_id, staff_name, staff_address, staff_contact, gym_id)
    VALUES (4, 'Staff4', 'Staff Address 4', '+1-448-6949', 1);
INSERT INTO Staff (staff_id, staff_name, staff_address, staff_contact, gym_id)
    VALUES (5, 'Staff5', 'Staff Address 5', '+1-144-3864', 2);
INSERT INTO Staff (staff_id, staff_name, staff_address, staff_contact, gym_id)
    VALUES (6, 'Staff6', 'Staff Address 6', '+1-566-9386', 5);
INSERT INTO Staff (staff_id, staff_name, staff_address, staff_contact, gym_id)
    VALUES (7, 'Staff7', 'Staff Address 7', '+1-730-5651', 5);
INSERT INTO Staff (staff_id, staff_name, staff_address, staff_contact, gym_id)
    VALUES (8, 'Staff8', 'Staff Address 8', '+1-972-6730', 4);
INSERT INTO Staff (staff_id, staff_name, staff_address, staff_contact, gym_id)
    VALUES (9, 'Staff9', 'Staff Address 9', '+1-808-4944', 4);
INSERT INTO Staff (staff_id, staff_name, staff_address, staff_contact, gym_id)
    VALUES (10, 'Staff10', 'Staff Address 10', '+1-259-4912', 5);

-- Fee INSERTS
INSERT INTO Fee (fee_id, fee_date, fee_amt, gym_id)
    VALUES (1, '2023-03-29', 169.0, 2);
INSERT INTO Fee (fee_id, fee_date, fee_amt, gym_id)
    VALUES (2, '2023-09-20', 65.0, 5);
INSERT INTO Fee (fee_id, fee_date, fee_amt, gym_id)
    VALUES (3, '2023-08-06', 169.0, 2);
INSERT INTO Fee (fee_id, fee_date, fee_amt, gym_id)
    VALUES (4, '2023-06-11', 181.0, 4);
INSERT INTO Fee (fee_id, fee_date, fee_amt, gym_id)
    VALUES (5, '2023-04-24', 126.0, 5);
INSERT INTO Fee (fee_id, fee_date, fee_amt, gym_id)
    VALUES (6, '2023-10-29', 162.0, 4);
INSERT INTO Fee (fee_id, fee_date, fee_amt, gym_id)
    VALUES (7, '2023-12-24', 178.0, 4);
INSERT INTO Fee (fee_id, fee_date, fee_amt, gym_id)
    VALUES (8, '2023-05-26', 66.0, 2);
INSERT INTO Fee (fee_id, fee_date, fee_amt, gym_id)
    VALUES (9, '2023-09-01', 95.0, 5);
INSERT INTO Fee (fee_id, fee_date, fee_amt, gym_id)
    VALUES (10, '2023-11-16', 80.0, 4);
INSERT INTO Fee (fee_id, fee_date, fee_amt, gym_id)
    VALUES (11, '2023-11-13', 138.0, 5);
INSERT INTO Fee (fee_id, fee_date, fee_amt, gym_id)
    VALUES (12, '2023-06-20', 167.0, 1);
INSERT INTO Fee (fee_id, fee_date, fee_amt, gym_id)
    VALUES (13, '2023-07-19', 50.0, 2);
INSERT INTO Fee (fee_id, fee_date, fee_amt, gym_id)
    VALUES (14, '2023-05-12', 160.0, 2);
INSERT INTO Fee (fee_id, fee_date, fee_amt, gym_id)
    VALUES (15, '2023-03-19', 88.0, 4);

-- Training_Schedule INSERTS
INSERT INTO Training_Schedule (sess_id, sess_date, sess_duration, sess_time, sess_details, trainer_id, gym_id)
    VALUES (1, '2023-10-11', 59, '19:00:00', 'Session details 1', 4, 3);
INSERT INTO Training_Schedule (sess_id, sess_date, sess_duration, sess_time, sess_details, trainer_id, gym_id)
    VALUES (2, '2023-10-26', 88, '9:00:00', 'Session details 2', 2, 5);
INSERT INTO Training_Schedule (sess_id, sess_date, sess_duration, sess_time, sess_details, trainer_id, gym_id)
    VALUES (3, '2023-11-22', 61, '15:00:00', 'Session details 3', 1, 4);
INSERT INTO Training_Schedule (sess_id, sess_date, sess_duration, sess_time, sess_details, trainer_id, gym_id)
    VALUES (4, '2023-08-13', 67, '7:00:00', 'Session details 4', 4, 2);
INSERT INTO Training_Schedule (sess_id, sess_date, sess_duration, sess_time, sess_details, trainer_id, gym_id)
    VALUES (5, '2023-09-05', 78, '18:00:00', 'Session details 5', 1, 4);
INSERT INTO Training_Schedule (sess_id, sess_date, sess_duration, sess_time, sess_details, trainer_id, gym_id)
    VALUES (6, '2023-08-06', 35, '11:00:00', 'Session details 6', 1, 1);
INSERT INTO Training_Schedule (sess_id, sess_date, sess_duration, sess_time, sess_details, trainer_id, gym_id)
    VALUES (7, '2023-10-22', 67, '9:00:00', 'Session details 7', 1, 5);
INSERT INTO Training_Schedule (sess_id, sess_date, sess_duration, sess_time, sess_details, trainer_id, gym_id)
    VALUES (8, '2023-09-27', 66, '13:00:00', 'Session details 8', 2, 5);
INSERT INTO Training_Schedule (sess_id, sess_date, sess_duration, sess_time, sess_details, trainer_id, gym_id)
    VALUES (9, '2023-06-27', 59, '18:00:00', 'Session details 9', 5, 3);
INSERT INTO Training_Schedule (sess_id, sess_date, sess_duration, sess_time, sess_details, trainer_id, gym_id)
    VALUES (10, '2023-12-24', 52, '12:00:00', 'Session details 10', 1, 5);
INSERT INTO Training_Schedule (sess_id, sess_date, sess_duration, sess_time, sess_details, trainer_id, gym_id)
    VALUES (11, '2023-11-19', 72, '9:00:00', 'Session details 11', 5, 5);
INSERT INTO Training_Schedule (sess_id, sess_date, sess_duration, sess_time, sess_details, trainer_id, gym_id)
    VALUES (12, '2023-08-31', 69, '9:00:00', 'Session details 12', 1, 1);
INSERT INTO Training_Schedule (sess_id, sess_date, sess_duration, sess_time, sess_details, trainer_id, gym_id)
    VALUES (13, '2023-07-07', 89, '17:00:00', 'Session details 13', 1, 1);
INSERT INTO Training_Schedule (sess_id, sess_date, sess_duration, sess_time, sess_details, trainer_id, gym_id)
    VALUES (14, '2023-11-10', 75, '6:00:00', 'Session details 14', 3, 3);
INSERT INTO Training_Schedule (sess_id, sess_date, sess_duration, sess_time, sess_details, trainer_id, gym_id)
    VALUES (15, '2023-08-24', 74, '18:00:00', 'Session details 15', 4, 3);

-- Attendance_Log INSERTS
INSERT INTO Attendance_Log (member_id, gym_id)
    VALUES (1, 4);
INSERT INTO Attendance_Log (member_id, gym_id)
    VALUES (2, 2);
INSERT INTO Attendance_Log (member_id, gym_id)
    VALUES (3, 2);
INSERT INTO Attendance_Log (member_id, gym_id)
    VALUES (4, 5);
INSERT INTO Attendance_Log (member_id, gym_id)
    VALUES (5, 1);
INSERT INTO Attendance_Log (member_id, gym_id)
    VALUES (6, 4);
INSERT INTO Attendance_Log (member_id, gym_id)
    VALUES (7, 3);
INSERT INTO Attendance_Log (member_id, gym_id)
    VALUES (8, 5);
INSERT INTO Attendance_Log (member_id, gym_id)
    VALUES (9, 1);
INSERT INTO Attendance_Log (member_id, gym_id)
    VALUES (10, 2);
INSERT INTO Attendance_Log (member_id, gym_id)
    VALUES (11, 3);
INSERT INTO Attendance_Log (member_id, gym_id)
    VALUES (12, 2);
INSERT INTO Attendance_Log (member_id, gym_id)
    VALUES (13, 3);
INSERT INTO Attendance_Log (member_id, gym_id)
    VALUES (14, 3);
INSERT INTO Attendance_Log (member_id, gym_id)
    VALUES (15, 2);
INSERT INTO Attendance_Log (member_id, gym_id)
    VALUES (16, 5);
INSERT INTO Attendance_Log (member_id, gym_id)
    VALUES (17, 3);
INSERT INTO Attendance_Log (member_id, gym_id)
    VALUES (18, 5);
INSERT INTO Attendance_Log (member_id, gym_id)
    VALUES (19, 5);
INSERT INTO Attendance_Log (member_id, gym_id)
    VALUES (20, 5);

-- Member_Uses_Facility INSERTS
INSERT INTO Member_Uses_Facility (memb_id, facility_id)
    VALUES (1, 10);
INSERT INTO Member_Uses_Facility (memb_id, facility_id)
    VALUES (17, 4);
INSERT INTO Member_Uses_Facility (memb_id, facility_id)
    VALUES (11, 10);
INSERT INTO Member_Uses_Facility (memb_id, facility_id)
    VALUES (20, 8);
INSERT INTO Member_Uses_Facility (memb_id, facility_id)
    VALUES (18, 10);
INSERT INTO Member_Uses_Facility (memb_id, facility_id)
    VALUES (20, 8);
INSERT INTO Member_Uses_Facility (memb_id, facility_id)
    VALUES (10, 10);
INSERT INTO Member_Uses_Facility (memb_id, facility_id)
    VALUES (6, 2);
INSERT INTO Member_Uses_Facility (memb_id, facility_id)
    VALUES (19, 10);
INSERT INTO Member_Uses_Facility (memb_id, facility_id)
    VALUES (7, 3);
INSERT INTO Member_Uses_Facility (memb_id, facility_id)
    VALUES (7, 3);
INSERT INTO Member_Uses_Facility (memb_id, facility_id)
    VALUES (1, 8);
INSERT INTO Member_Uses_Facility (memb_id, facility_id)
    VALUES (12, 2);
INSERT INTO Member_Uses_Facility (memb_id, facility_id)
    VALUES (8, 2);
INSERT INTO Member_Uses_Facility (memb_id, facility_id)
    VALUES (10, 4);
INSERT INTO Member_Uses_Facility (memb_id, facility_id)
    VALUES (2, 9);
INSERT INTO Member_Uses_Facility (memb_id, facility_id)
    VALUES (6, 9);
INSERT INTO Member_Uses_Facility (memb_id, facility_id)
    VALUES (5, 8);
INSERT INTO Member_Uses_Facility (memb_id, facility_id)
    VALUES (8, 5);
INSERT INTO Member_Uses_Facility (memb_id, facility_id)
    VALUES (4, 10);
INSERT INTO Member_Uses_Facility (memb_id, facility_id)
    VALUES (7, 8);
INSERT INTO Member_Uses_Facility (memb_id, facility_id)
    VALUES (15, 5);
INSERT INTO Member_Uses_Facility (memb_id, facility_id)
    VALUES (7, 4);
INSERT INTO Member_Uses_Facility (memb_id, facility_id)
    VALUES (7, 9);
INSERT INTO Member_Uses_Facility (memb_id, facility_id)
    VALUES (11, 8);
INSERT INTO Member_Uses_Facility (memb_id, facility_id)
    VALUES (10, 5);
INSERT INTO Member_Uses_Facility (memb_id, facility_id)
    VALUES (4, 8);
INSERT INTO Member_Uses_Facility (memb_id, facility_id)
    VALUES (7, 9);
INSERT INTO Member_Uses_Facility (memb_id, facility_id)
    VALUES (2, 9);
INSERT INTO Member_Uses_Facility (memb_id, facility_id)
    VALUES (12, 1);

-- Staff_Uses_Facility INSERTS
INSERT INTO Staff_Uses_Facility (staff_id, facility_id)
    VALUES (9, 8);
INSERT INTO Staff_Uses_Facility (staff_id, facility_id)
    VALUES (3, 7);
INSERT INTO Staff_Uses_Facility (staff_id, facility_id)
    VALUES (9, 2);
INSERT INTO Staff_Uses_Facility (staff_id, facility_id)
    VALUES (8, 8);
INSERT INTO Staff_Uses_Facility (staff_id, facility_id)
    VALUES (6, 10);
INSERT INTO Staff_Uses_Facility (staff_id, facility_id)
    VALUES (9, 9);
INSERT INTO Staff_Uses_Facility (staff_id, facility_id)
    VALUES (1, 7);
INSERT INTO Staff_Uses_Facility (staff_id, facility_id)
    VALUES (10, 6);
INSERT INTO Staff_Uses_Facility (staff_id, facility_id)
    VALUES (10, 1);
INSERT INTO Staff_Uses_Facility (staff_id, facility_id)
    VALUES (8, 9);
INSERT INTO Staff_Uses_Facility (staff_id, facility_id)
    VALUES (6, 9);
INSERT INTO Staff_Uses_Facility (staff_id, facility_id)
    VALUES (9, 1);
INSERT INTO Staff_Uses_Facility (staff_id, facility_id)
    VALUES (2, 3);
INSERT INTO Staff_Uses_Facility (staff_id, facility_id)
    VALUES (1, 10);
INSERT INTO Staff_Uses_Facility (staff_id, facility_id)
    VALUES (9, 4);
INSERT INTO Staff_Uses_Facility (staff_id, facility_id)
    VALUES (1, 10);
INSERT INTO Staff_Uses_Facility (staff_id, facility_id)
    VALUES (7, 3);
INSERT INTO Staff_Uses_Facility (staff_id, facility_id)
    VALUES (3, 3);
INSERT INTO Staff_Uses_Facility (staff_id, facility_id)
    VALUES (5, 5);
INSERT INTO Staff_Uses_Facility (staff_id, facility_id)
    VALUES (6, 3);

-- Member_Trained_By INSERTS
INSERT INTO Member_Trained_By (memb_id, trainer_id)
    VALUES (1, 3);
INSERT INTO Member_Trained_By (memb_id, trainer_id)
    VALUES (2, 5);
INSERT INTO Member_Trained_By (memb_id, trainer_id)
    VALUES (3, 5);
INSERT INTO Member_Trained_By (memb_id, trainer_id)
    VALUES (4, 5);
INSERT INTO Member_Trained_By (memb_id, trainer_id)
    VALUES (5, 5);
INSERT INTO Member_Trained_By (memb_id, trainer_id)
    VALUES (6, 3);
INSERT INTO Member_Trained_By (memb_id, trainer_id)
    VALUES (7, 2);
INSERT INTO Member_Trained_By (memb_id, trainer_id)
    VALUES (8, 3);
INSERT INTO Member_Trained_By (memb_id, trainer_id)
    VALUES (9, 4);
INSERT INTO Member_Trained_By (memb_id, trainer_id)
    VALUES (10, 3);
INSERT INTO Member_Trained_By (memb_id, trainer_id)
    VALUES (11, 3);
INSERT INTO Member_Trained_By (memb_id, trainer_id)
    VALUES (12, 4);
INSERT INTO Member_Trained_By (memb_id, trainer_id)
    VALUES (13, 3);
INSERT INTO Member_Trained_By (memb_id, trainer_id)
    VALUES (14, 1);
INSERT INTO Member_Trained_By (memb_id, trainer_id)
    VALUES (15, 2);
INSERT INTO Member_Trained_By (memb_id, trainer_id)
    VALUES (16, 3);
INSERT INTO Member_Trained_By (memb_id, trainer_id)
    VALUES (17, 3);
INSERT INTO Member_Trained_By (memb_id, trainer_id)
    VALUES (18, 2);
INSERT INTO Member_Trained_By (memb_id, trainer_id)
    VALUES (19, 3);
INSERT INTO Member_Trained_By (memb_id, trainer_id)
    VALUES (20, 5);


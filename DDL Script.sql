
CREATE TABLE Member (
    memb_id INT PRIMARY KEY,
    memb_name VARCHAR(100),
    memb_address VARCHAR(255),
    memb_contact VARCHAR(20),
    memb_email VARCHAR(100),
    gym_id INT,
    FOREIGN KEY (gym_id) REFERENCES Gym(gym_id)
);

CREATE TABLE Trainer (
    trainer_id INT PRIMARY KEY,
    trainer_name VARCHAR(100),
    trainer_contact VARCHAR(20),
    trainer_address VARCHAR(255),
    gym_id INT,
    FOREIGN KEY (gym_id) REFERENCES Gym(gym_id)
);

CREATE TABLE Gym (
    gym_id INT PRIMARY KEY
);

CREATE TABLE Facility (
    facility_id INT PRIMARY KEY,
    facility_name VARCHAR(100)
);

CREATE TABLE Staff (
    staff_id INT PRIMARY KEY,
    staff_name VARCHAR(100),
    staff_address VARCHAR(255),
    staff_contact VARCHAR(20),
    gym_id INT,
    FOREIGN KEY (gym_id) REFERENCES Gym(gym_id)
);

CREATE TABLE Fee (
    fee_id INT PRIMARY KEY,
    fee_date DATE,
    fee_amt DECIMAL(10, 2),
    gym_id INT,
    FOREIGN KEY (gym_id) REFERENCES Gym(gym_id)
);

CREATE TABLE Training_Schedule (
    sess_id INT PRIMARY KEY,
    sess_date DATE,
    sess_duration INT,
    sess_time TIME,
    sess_details TEXT,
    trainer_id INT,
    gym_id INT,
    FOREIGN KEY (trainer_id) REFERENCES Trainer(trainer_id),
    FOREIGN KEY (gym_id) REFERENCES Gym(gym_id)
);

CREATE TABLE Attendance_Log (
    member_id INT,
    gym_id INT,
    PRIMARY KEY (member_id, gym_id),
    FOREIGN KEY (member_id) REFERENCES Member(memb_id),
    FOREIGN KEY (gym_id) REFERENCES Gym(gym_id)
);

CREATE TABLE Member_Uses_Facility (
    memb_id INT,
    facility_id INT,
    PRIMARY KEY (memb_id, facility_id),
    FOREIGN KEY (memb_id) REFERENCES Member(memb_id),
    FOREIGN KEY (facility_id) REFERENCES Facility(facility_id)
);

CREATE TABLE Staff_Uses_Facility (
    staff_id INT,
    facility_id INT,
    PRIMARY KEY (staff_id, facility_id),
    FOREIGN KEY (staff_id) REFERENCES Staff(staff_id),
    FOREIGN KEY (facility_id) REFERENCES Facility(facility_id)
);

CREATE TABLE Member_Trained_By (
    memb_id INT PRIMARY KEY,
    trainer_id INT,
    FOREIGN KEY (memb_id) REFERENCES Member(memb_id),
    FOREIGN KEY (trainer_id) REFERENCES Trainer(trainer_id)
);


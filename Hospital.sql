CREATE TABLE Patient (

    id UUID PRIMARY KEY,

    firstName VARCHAR(50),

    lastName VARCHAR(50),

    age INT

);





CREATE TABLE OphthalmologyRecord (

    id UUID PRIMARY KEY,

    dipotrhreLeft FLOAT,

    dipotrhreRight FLOAT,

    patientId UUID,

    FOREIGN KEY (patientId) REFERENCES Patient(id)

);



INSERT INTO Patient VALUES (1, 'Petar', 'Ivanovic', 36);

INSERT INTO Patient VALUES (2, 'Ivan', 'Divic', 26);

INSERT INTO Patient VALUES (3, 'Dina', 'Matic', 19);



CREATE TABLE Doctor (

    id UUID PRIMARY KEY,

    firstName VARCHAR(50),

    lastName VARCHAR(50),

    age INT,

    specialization VARCHAR(100)

);





INSERT INTO Doctor VALUES (1, 'Matko', 'Marinic', 35, 'Ophthalmologist');

INSERT INTO Doctor VALUES (2, 'Ivan', 'Kova', 55, 'Dermatologist');

INSERT INTO Doctor VALUES (3, 'Tonka', 'Horvat', 36, 'Cardiologist');

INSERT INTO Doctor VALUES (4, 'Tomislav', 'Inov', 55, 'Surgeon');

INSERT INTO Doctor VALUES (5, 'Petra', 'Marinic', 41, 'Endocrinologist');



CREATE TABLE Department (

    id UUID PRIMARY KEY,

    name VARCHAR(50),

    doctorId UUID,

    FOREIGN KEY (doctorId) REFERENCES Doctor(id)

);



INSERT INTO Department VALUES (1, 'Ophthalmology', 1);

INSERT INTO Department VALUES (2, 'Dermatology', 2);

INSERT INTO Department VALUES (3, 'Cardiology', 3);



CREATE TABLE PatientDoctor (

    patientId UUID,

    doctorId UUID,

    PRIMARY KEY (patientId, doctorId),

    FOREIGN KEY (patientId) REFERENCES Patient(id),

    FOREIGN KEY (doctorId) REFERENCES Doctor(id)

);



INSERT INTO PatientDoctor VALUES (1, 1);

INSERT INTO PatientDoctor VALUES (1, 2);

INSERT INTO PatientDoctor VALUES (3, 2);



INSERT INTO OphthalmologyRecord VALUES (1, '2.3', '2.1', 1);

INSERT INTO OphthalmologyRecord VALUES (2, '1', '1', 2);

INSERT INTO OphthalmologyRecord VALUES (3, '0.1', '2.1', 3);



select * from PatientDoctor

select * from doctor

select * from ophthalmologyrecord

select * from patient

select * from patientdoctor
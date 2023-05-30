CREATE TABLE "Patient" (
    "Id" UUID PRIMARY KEY,
    "FirstName" VARCHAR(50),
    "LastName" VARCHAR(50),
    "Age" INT
);


CREATE TABLE "OphthalmologyRecord" (
    "Id" UUID PRIMARY KEY,
    "DipotrhreLeft" FLOAT,
    "DipotrhreRight" FLOAT,
    "PatientId" UUID,
    FOREIGN KEY ("PatientId") REFERENCES "Patient"("Id")
);


CREATE TABLE "Doctor" (
    "Id" UUID PRIMARY KEY,
    "FirstName" VARCHAR(50),
    "FastName" VARCHAR(50),
    "Age" INT,
    "Specialization" VARCHAR(100)
);

CREATE TABLE "Department" (
    "Id" UUID PRIMARY KEY,
    "Name" VARCHAR(50),
    "DoctorId" UUID,
 	 FOREIGN KEY ("DoctorId") REFERENCES "Doctor"("Id")

); 


CREATE TABLE "PatientDoctor" (
    "PatientId" UUID,
    "DoctorId" UUID,
    PRIMARY KEY ("PatientId", "DoctorId"),
    FOREIGN KEY ("PatientId") REFERENCES "Patient"("Id"),
    FOREIGN KEY ("DoctorId") REFERENCES "Doctor"("Id")
);



INSERT INTO"Patient"VALUES ('40e6215d-b5c6-4896-987c-f30f3678f608', 'Petar', 'Ivanovic', 36);
INSERT INTO"Patient"VALUES ('6ecd8c99-4036-403d-bf84-cf8400f67836', 'Ivan', 'Divic', 26);
INSERT INTO"Patient"VALUES ('3f333df6-90a4-4fda-8dd3-9485d27cee36', 'Dina', 'Matic', 19);

INSERT INTO"Doctor"VALUES ('55f9ee48-95e2-49d8-a644-280998883819', 'Matko', 'Marinic', 35, 'Ophthalmologist');
INSERT INTO"Doctor"VALUES ('9d626766-e469-4857-8645-7f4aa3b8671f', 'Ivan', 'Kova', 55, 'Dermatologist');
INSERT INTO"Doctor"VALUES ('5d53f976-e1ed-45b5-b872-1b749dc5cbb8', 'Tonka', 'Horvat', 36, 'Cardiologist');
INSERT INTO"Doctor"VALUES ('d1ba18ed-5137-45fd-8f2d-f2d785a20cc6', 'Tomislav', 'Inov', 55, 'Surgeon');
INSERT INTO"Doctor"VALUES ('ca344988-0723-4fa5-929e-44dd8adc5e0f', 'Petra', 'Marinic', 41, 'Endocrinologist');


INSERT INTO"Department"VALUES ('7722163f-7aa4-4030-83ae-81ea0be9754d', 'Ophthalmology', '55f9ee48-95e2-49d8-a644-280998883819');
INSERT INTO"Department"VALUES ('9ec5f4a2-4b2c-46f8-9810-084990efe647', 'Dermatology', '9d626766-e469-4857-8645-7f4aa3b8671f');
INSERT INTO"Department"VALUES ('bd4c0e5f-7953-4c7b-8cf6-f0384d250833', 'Cardiology', '5d53f976-e1ed-45b5-b872-1b749dc5cbb8');

INSERT INTO"PatientDoctor"VALUES ('40e6215d-b5c6-4896-987c-f30f3678f608', '55f9ee48-95e2-49d8-a644-280998883819');
INSERT INTO"PatientDoctor"VALUES ('40e6215d-b5c6-4896-987c-f30f3678f608', '9d626766-e469-4857-8645-7f4aa3b8671f');
INSERT INTO"PatientDoctor"VALUES ('5d53f976-e1ed-45b5-b872-1b749dc5cbb8', '9d626766-e469-4857-8645-7f4aa3b8671f');

INSERT INTO"OphthalmologyRecord"VALUES ('657e29a6-cc9f-45a1-892c-e73d6d5e22201', '2.3', '2.1', '40e6215d-b5c6-4896-987c-f30f3678f608');
INSERT INTO"OphthalmologyRecord"VALUES ('6e181ca3-8e4c-4cda-b7be-28cc359566c9', '1', '1', '6ecd8c99-4036-403d-bf84-cf8400f67836');
INSERT INTO"OphthalmologyRecord"VALUES ('3f333df6-90a4-4fda-8dd3-9485d27cee36', '0.1', '2.1', '3f333df6-90a4-4fda-8dd3-9485d27cee36');
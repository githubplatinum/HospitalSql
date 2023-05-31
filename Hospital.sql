
CREATE TABLE "Specialization" (
    "Id" UUID PRIMARY KEY,
    "Name" VARCHAR(100)
);

CREATE TABLE "Department" (
    "Id" UUID PRIMARY KEY,
    "Name" VARCHAR(100)
     ); 

CREATE TABLE "Address" (
    "Id" UUID PRIMARY KEY,
    "StreetName" VARCHAR(100),
    "StreetNumber" VARCHAR(50),
    "City" VARCHAR(100),
    "ZipCode" INT
);

CREATE TABLE "Patient" (
    "Id" UUID PRIMARY KEY,
    "FirstName" VARCHAR(50),
    "LastName" VARCHAR(50),
    "Dob" DATE,
    "AddressId" UUID,
    FOREIGN KEY ("AddressId") REFERENCES "Address"("Id")
);


CREATE TABLE "Doctor" (
    "Id" UUID PRIMARY KEY,
    "FirstName" VARCHAR(50),
    "LastName" VARCHAR(50),
    "Dob" DATE,
    "SpecializationId" UUID,
    "AddressId" UUID,
    "DepartmentId" UUID,
    FOREIGN KEY ("SpecializationId") REFERENCES "Specialization"("Id"),
    FOREIGN KEY ("AddressId") REFERENCES "Address"("Id"),
    FOREIGN KEY ("DepartmentId") REFERENCES "Department"("Id")
);


CREATE TABLE "MedicalRecord" (
	
    "Id" UUID PRIMARY KEY,
    "AppointentDate" DATE, 
    "PatientId" UUID,
    FOREIGN KEY ("PatientId") REFERENCES "Patient"("Id"),
    "DoctorId" UUID,
    FOREIGN KEY ("DoctorId") REFERENCES "Doctor"("Id")
)


INSERT INTO "Specialization" ("Id", "Name")
VALUES ('00000000-0000-0000-0000-000000000001', 'Cardiology'),
       ('00000000-0000-0000-0000-000000000002', 'Dermatology'),
       ('00000000-0000-0000-0000-000000000003', 'Pediatrics'),
       ('00000000-0000-0000-0000-000000000004', 'Orthopedics'),
       ('00000000-0000-0000-0000-000000000005', 'Neurology');
      
      INSERT INTO "Department" ("Id", "Name")
VALUES ('00000000-0000-0000-0000-000000000001', 'Cardiology Department'),
       ('00000000-0000-0000-0000-000000000002', 'Dermatology Department'),
       ('00000000-0000-0000-0000-000000000003', 'Pediatrics Department'),
       ('00000000-0000-0000-0000-000000000004', 'Orthopedics Department'),
       ('00000000-0000-0000-0000-000000000005', 'Neurology Department');
      
      INSERT INTO "Address" ("Id", "StreetName", "StreetNumber", "City", "ZipCode")
VALUES ('00000000-0000-0000-0000-000000000001', 'Main Street', '123', 'New York', 10001),
       ('00000000-0000-0000-0000-000000000002', 'Elm Street', '456', 'Los Angeles', 90001),
       ('00000000-0000-0000-0000-000000000003', 'Oak Avenue', '789', 'Chicago', 60007),
       ('00000000-0000-0000-0000-000000000004', 'Maple Drive', '101', 'Houston', 77001),
       ('00000000-0000-0000-0000-000000000005', 'Pine Road', '222', 'Miami', 33101);
      
      INSERT INTO "Patient" ("Id", "FirstName", "LastName", "Dob", "AddressId")
VALUES ('00000000-0000-0000-0000-000000000001', 'John', 'Doe', '1990-01-01', '00000000-0000-0000-0000-000000000001'),
       ('00000000-0000-0000-0000-000000000002', 'Jane', 'Smith', '1985-05-10', '00000000-0000-0000-0000-000000000002');

INSERT INTO "Doctor" ("Id", "FirstName", "LastName", "Dob", "SpecializationId", "AddressId", "DepartmentId")
VALUES ('00000000-0000-0000-0000-000000000001', 'John', 'Doe', '1980-05-15', '00000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001'),
       ('00000000-0000-0000-0000-000000000002', 'Jane', 'Smith', '1975-09-20', '00000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000002'),
       ('00000000-0000-0000-0000-000000000003', 'David', 'Johnson', '1992-11-30', '00000000-0000-0000-0000-000000000003', '00000000-0000-0000-0000-000000000003', '00000000-0000-0000-0000-000000000001'),
       ('00000000-0000-0000-0000-000000000004', 'Emily', 'Brown', '1988-07-10', '00000000-0000-0000-0000-000000000004', '00000000-0000-0000-0000-000000000004', '00000000-0000-0000-0000-000000000002'),
       ('00000000-0000-0000-0000-000000000005', 'Michael', 'Taylor', '1983-04-25', '00000000-0000-0000-0000-000000000005', '00000000-0000-0000-0000-000000000005', '00000000-0000-0000-0000-000000000003');

SELECT "Id", "FirstName", "LastName", "Dob", "SpecializationId" FROM "Doctor"

select * from  "Address"
select * from  "Department"
select * from  "Doctor"
select * from  "MedicalRecord" 
select * from "Patient" 
select * from "Specialization"  

INSERT INTO "MedicalRecord" ("Id", "PatientId", "AppointmentDate", "Problem", "DoctorId")
VALUES
    ('00000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', '2023-05-31', 'Problem 1', '00000000-0000-0000-0000-000000000001'),
    ('00000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000002', '2023-06-01', 'Problem 2', '00000000-0000-0000-0000-000000000002')

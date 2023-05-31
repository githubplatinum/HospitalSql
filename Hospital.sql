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
    "PatientId" UUID,
    "AppintmentDate" DATE,
    "Problem" VARCHAR(1000),
    FOREIGN KEY ("PatientId") REFERENCES "Patient"("Id"),
    "DoctorId" UUID,
    FOREIGN KEY ("DoctorId") REFERENCES "Doctor"("Id")
)

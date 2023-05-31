SELECT d."FirstName", d."LastName", s."Name" AS Specialization, a."StreetName", a."StreetNumber", a."City"
FROM "Doctor" d
JOIN "Specialization" s ON d."SpecializationId" = s."Id"
JOIN "Address" a ON d."AddressId" = a."Id"

SELECT p."FirstName", p."LastName", a."StreetName", mr."AppointmentDate", mr."Problem", a."StreetNumber", a."City"
FROM "Patient" p
JOIN "Address" a ON p."AddressId" = p."Id"
JOIN "MedicalRecord" mr ON mr."PatientId" = p."Id"
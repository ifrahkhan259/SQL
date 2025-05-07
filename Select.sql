--Select--
CREATE PROCEDURE GetAllStudents
AS
BEGIN
    SELECT * FROM Students;
END;

EXEC GetAllStudents;
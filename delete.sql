--Delete
CREATE PROCEDURE DeleteStudents
    @ID INT
AS
BEGIN
    DELETE FROM Students
    WHERE ID = @ID;
END;
EXEC DeleteStudents
@ID = 909;
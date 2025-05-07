--Update--
CREATE PROCEDURE UpdateStudents
    @ID INT,
    @Sname NVARCHAR(100),
    @Email NVARCHAR(100),
	@Class NVARCHAR(100),
	@Mobileno INT,
	@Saddress NVARCHAR(100),
	@Fees INT,
	@Sdate Date
	AS
BEGIN
    UPDATE Students
    SET Sname = @Sname, Email = @Email, Class =@Class,Mobileno=@Mobileno,Saddress=@Saddress,Fees=@Fees,Sdate=@Sdate
    WHERE ID = @ID;
END;
EXEC UpdateStudents
@ID = 909, 
@Sname = 'Ifrah', 
@Email = 'ifrah25@gmail.com',
@Class='Bsc',
@Mobileno=23546,
@Saddress='Mumbai',
@Fees =5000,
@Sdate=2/2/25;
Use  Ait_intern

CREATE TABLE Students(
ID  INT PRIMARY KEY,
Sname NVARCHAR(100),
Email NVARCHAR(100),
Class NVARCHAR(100),
Mobileno INT,
Saddress NVARCHAR(100),
Fees INT,
Sdate Datetime
);
Select*from Students


--insert--
  CREATE PROCEDURE AddStudents
   @ID INT,
    @Sname NVARCHAR(100),

    @Email NVARCHAR(100),
	@Class NVARCHAR(100),
    @Mobileno INT,
	@Saddress NVARCHAR(100),
	@Fees INT,
	@Sdate Datetime

AS
BEGIN
    INSERT INTO Students(ID,Sname, Email,Class,Mobileno,Saddress,Fees,Sdate)
    VALUES (@ID,@Sname, @Email,@Class,@Mobileno, @Saddress,@Fees,@Sdate)
END;

EXEC AddStudents
@ID=909,
@Sname = 'ifrah',
@Email = 'ifrah29@gmail.com',
@Class='Bcs',
@Mobileno=56893,
@Saddress='Mumbai',
@Fees = 5000,
@Sdate ='2-2-25';
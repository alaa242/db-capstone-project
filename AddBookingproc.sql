DELIMITER //

CREATE PROCEDURE AddBooking(
    IN bookingID INT,
    IN customerID INT,
    IN bookingDate DATE,
    IN tableNumber INT
)
BEGIN
    INSERT INTO Bookings (BookingID, CustomerID, Date, TableNumber)
    VALUES (bookingID, customerID, Date, tableNumber);
END;
//

DELIMITER ;

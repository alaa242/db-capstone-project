DELIMITER //

CREATE PROCEDURE UpdateBooking(
    IN bookingID INT,
    IN newBookingDate DATE
)
BEGIN
    UPDATE Bookings
    SET Date = newBookingDate
    WHERE BookingID = bookingID;
END;
//

DELIMITER ;

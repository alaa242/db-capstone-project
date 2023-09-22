DELIMITER //

CREATE PROCEDURE CancelBooking(IN BookingID INT)
BEGIN
    -- Check if the booking exists
    IF EXISTS (SELECT * FROM Bookings WHERE BookingID = BookingID) THEN
        -- Delete the booking
        DELETE FROM Bookings WHERE BookingID = BookingID;
        SELECT 'Booking canceled' AS Status, 'The booking has been successfully canceled.' AS Message;
    ELSE
        SELECT 'Booking not found' AS Status, 'The booking with the specified ID does not exist.' AS Message;
    END IF;
END;
//

DELIMITER ;



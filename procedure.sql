DROP PROCEDURE add_driver;

CREATE OR REPLACE PROCEDURE add_driver(driverId INTEGER,
    driverRef VARCHAR, 
    number VARCHAR, 
    code VARCHAR, 
    forename VARCHAR, 
    surname VARCHAR, 
    dob VARCHAR, 
    nationality VARCHAR, 
    url VARCHAR)

LANGUAGE'plpgsql'
AS $$
   DECLARE     

   BEGIN
      INSERT INTO drivers(driverId, driverRef, number, code, forename, surname, dob, nationality, url)
      VALUES(driverId, driverRef, number, code, forename, surname, dob, nationality, url);
   END;
$$
--Трігер видаляє всі результати водія після видалення водія
DROP TRIGGER IF EXISTS deleted_driver ON orders;
DROP FUNCTION IF EXISTS remove_result;

CREATE FUNCTION remove_result() RETURNS TRIGGER
LANGUAGE 'plpgsql'
AS
$$
   BEGIN 
      DELETE FROM results WHERE results.driverId=OLD.driverId;
      RETURN OLD;
   END;
$$;

CREATE TRIGGER deleted_driver
BEFORE DELETE ON drivers
FOR EACH ROW EXECUTE FUNCTION remove_result();
-- 1.SQL FUNCTION
CREATE OR REPLACE FUNCTION get_appointment_count(doc_id INT)
RETURNS INT AS $$
DECLARE
    total INT;
BEGIN
    SELECT COUNT(*) INTO total
    FROM appointment
    WHERE doctor_id = doc_id;

    RETURN total;
END;
$$ LANGUAGE plpgsql;
-- Call Function
SELECT get_appointment_count(2);

--2.SQL PROCEDURE
CREATE OR REPLACE PROCEDURE add_patient(
    p_name VARCHAR,
    p_age INT,
    p_phone VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO patient (patient_name, age, phone)
    VALUES (p_name, p_age, p_phone);
END;
$$;

--call Procedure
CALL add_patient('Rahul Kumar', 32, '9876543210');
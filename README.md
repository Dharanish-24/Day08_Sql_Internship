## PROCEDURE
 - **CREATE PROCEDURE** — performs an operation (like INSERT, UPDATE)
   
        CREATE OR REPLACE PROCEDURE procedure_name(parameter_list)
        LANGUAGE plpgsql
        AS $$
        BEGIN
            -- Procedure logic (INSERT, UPDATE, DELETE)
        END;
        $$;
![image]()
## FUNCTION
- **CREATE FUNCTION** — returns a value
         
      CREATE OR REPLACE FUNCTION function_name(parameter_list)
      RETURNS return_type AS $$
      DECLARE
          -- Declare local variables (optional)
      BEGIN
          -- Function logic (SELECT, calculations, etc.)
          RETURN value;
      END;
      $$ LANGUAGE plpgsql;
![image]()

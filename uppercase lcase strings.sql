SELECT * FROM sys.class;
use sys;
truncate table class;

SELECT concat(first_name, last_name)
AS complete_name
FROM system_user;

-- DEVOLVERÁ, POR EJEMPLO: "ACTION"
SELECT UCASE (description) FROM class;
-- DEVOLVERÁ, POR EJEMPLO: "action"
SELECT LCASE (description) FROM class;

-- devolverá, por ejemplo: noitcA
SELECT REVERSE(description) FROM class;

-- susbstring
SELECT susbtring(description, 1, 3)FROM class;

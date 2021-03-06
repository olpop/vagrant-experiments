set echo on
spool ./create_test_role.log

DROP ROLE TEST_ROLE;

CREATE ROLE TEST_ROLE NOT IDENTIFIED;
GRANT CREATE SESSION TO TEST_ROLE;
GRANT ALTER SESSION TO TEST_ROLE;
GRANT CONNECT TO TEST_ROLE;

GRANT CREATE ANY TABLE TO TEST_ROLE;
GRANT DROP ANY TABLE TO TEST_ROLE;
GRANT ALTER ANY TABLE TO TEST_ROLE;
GRANT CREATE ANY TYPE TO TEST_ROLE;
GRANT CREATE ANY VIEW TO TEST_ROLE;

GRANT CREATE SYNONYM TO TEST_ROLE;
GRANT DROP ANY SYNONYM TO TEST_ROLE;
GRANT CREATE PUBLIC SYNONYM TO TEST_ROLE;
GRANT DROP PUBLIC SYNONYM TO TEST_ROLE;

GRANT CREATE CLUSTER TO TEST_ROLE;
GRANT CREATE DIMENSION TO TEST_ROLE;
GRANT CREATE PUBLIC DATABASE LINK TO TEST_ROLE;
GRANT CREATE ROLE TO TEST_ROLE;
GRANT CREATE SEQUENCE TO TEST_ROLE;
GRANT CREATE SNAPSHOT TO TEST_ROLE;

GRANT CREATE PROCEDURE TO TEST_ROLE;
GRANT CREATE ANY TRIGGER TO TEST_ROLE;

GRANT RESOURCE TO TEST_ROLE;

spool off
exit 0

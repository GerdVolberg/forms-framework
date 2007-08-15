-- p:\pvs\forms6i\entwicklung\vol\Scripts\create_all.pks
--
-- Generated for Oracle 8 on Wed Aug 15  15:41:06 2007 by Server Generator 6.0.3.3.0
 

PROMPT Creating Package 'LOGG'
CREATE OR REPLACE PACKAGE LOGG IS
-- Sub-Program Unit Declarations
PROCEDURE INSERT_ROW
 (P_ID IN NUMBER
 ,P_APPLICATION IN VARCHAR2
 ,P_APPLICATION_PART IN VARCHAR2
 ,P_LOG_DATE IN DATE
 ,P_PRIORITY IN NUMBER
 ,P_TEXT IN VARCHAR2
 ,P_SESSION_NO IN NUMBER := NULL
 ,P_SUB_SESSION_NO IN NUMBER := NULL
 ,P_USERNAME IN VARCHAR2
 );
PROCEDURE INSERT_ROW
 (P_ROW IN FRW_LOGGING%ROWTYPE
 );
FUNCTION NEXT_ID
 RETURN NUMBER;


END LOGG;
/

-- p:\pvs\forms6i\entwicklung\vol\Scripts\logg.pkb
--
-- Generated for Oracle 8 on Wed Aug 15  14:21:37 2007 by Server Generator 6.0.3.3.0
 

PROMPT Creating Package Body 'LOGG'
CREATE OR REPLACE PACKAGE BODY LOGG IS

-- Sub-Program Units
PROCEDURE INSERT_ROW
 (P_ROW IN FRW_LOGGING%ROWTYPE
 )
 IS
BEGIN
  INSERT INTO frw_Logging
    (ID,
     APPLICATION,
     APPLICATION_PART,
     LOG_DATE,
     LOG_TEXT,
     PRIORITY,
     SESSION_NO,
     SUB_SESSION_NO,
     USERNAME)
  VALUES
    (NVL (P_Row.ID, LOGG.Next_ID),
     UPPER (P_Row.APPLICATION),      -- must be upper
     UPPER (P_Row.APPLICATION_PART), -- must be upper
     P_Row.LOG_DATE,
     P_Row.LOG_TEXT,
     P_Row.PRIORITY,
     P_Row.SESSION_NO,
     P_Row.SUB_SESSION_NO,
     P_Row.USERNAME);
END;

FUNCTION NEXT_ID
 RETURN NUMBER
 IS
-- Program Data
V_ID NUMBER;

-- PL/SQL Block
BEGIN
BEGIN
  SELECT LOGG_SEQ.nextval
    INTO V_ID
    FROM DUAL;
END;
END NEXT_ID;

-- PL/SQL Block
END LOGG;
/


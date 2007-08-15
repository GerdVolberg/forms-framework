-- p:\pvs\forms6i\entwicklung\vol\Scripts\create_all.pkb
--
-- Generated for Oracle 8 on Wed Aug 15  16:11:01 2007 by Server Generator 6.0.3.3.0
 

PROMPT Creating Package Body 'LOGG'
CREATE OR REPLACE PACKAGE BODY LOGG IS

-- Sub-Program Units
PROCEDURE INSERT_ROW
 (P_APPLICATION IN VARCHAR2
 ,P_APPLICATION_PART IN VARCHAR2
 ,P_LOG_DATE IN DATE
 ,P_PRIORITY IN NUMBER
 ,P_TEXT IN VARCHAR2
 ,P_USERNAME IN VARCHAR2
 ,P_SESSION_NO IN NUMBER := NULL
 ,P_SUB_SESSION_NO IN NUMBER := NULL
 ,P_ID IN NUMBER := NULL
 )
 IS
-- Program Data
V_ROW FRW_LOGGING%ROWTYPE;

-- PL/SQL Block
BEGIN
BEGIN
  V_Row.ID               := P_ID;
  V_Row.APPLICATION      := P_APPLICATION;
  V_Row.APPLICATION_PART := P_APPLICATION_PART;
  V_Row.LOG_DATE         := P_LOG_DATE;
  V_Row.TEXT             := P_TEXT;
  V_Row.PRIORITY         := P_PRIORITY;
  V_Row.SESSION_NO       := P_SESSION_NO;
  V_Row.SUB_SESSION_NO   := P_SUB_SESSION_NO;
  V_Row.USERNAME         := P_USERNAME;

  Insert_Row (V_Row);
END;
END INSERT_ROW;

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
     TEXT,
     PRIORITY,
     SESSION_NO,
     SUB_SESSION_NO,
     USERNAME)
  VALUES
    (NVL (P_Row.ID, LOGG.Next_ID),
     UPPER (P_Row.APPLICATION),      -- must be upper
     UPPER (P_Row.APPLICATION_PART), -- must be upper
     P_Row.LOG_DATE,
     P_Row.TEXT,
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

  RETURN (V_ID);
END;
END NEXT_ID;

-- PL/SQL Block
END LOGG;
/


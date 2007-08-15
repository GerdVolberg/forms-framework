-- p:\pvs\forms6i\entwicklung\vol\Scripts\logg.pks
--
-- Generated for Oracle 8 on Wed Aug 15  15:11:27 2007 by Server Generator 6.0.3.3.0
 

PROMPT Creating Package 'LOGG'
CREATE OR REPLACE PACKAGE LOGG IS
-- Sub-Program Unit Declarations
PROCEDURE INSERT_ROW
 (P_ROW IN FRW_LOGGING%ROWTYPE
 );
FUNCTION NEXT_ID
 RETURN NUMBER;


END LOGG;
/

-- p:\pvs\forms6i\entwicklung\vol\Scripts\frw_logging.trg
--
-- Generated for Oracle 8 on Wed Aug 15  15:11:58 2007 by Server Generator 6.0.3.3.0
 

PROMPT Creating Trigger 'LOGG_BRIU'
CREATE OR REPLACE TRIGGER LOGG_BRIU
 BEFORE INSERT OR UPDATE
 ON FRW_LOGGING
 FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.INSERT_USER := USER;
    :NEW.INSERT_DATE := SYSDATE;
  ELSIF UPDATING THEN
    :NEW.UPDATE_USER := USER;
    :NEW.UPDATE_DATE := SYSDATE;
  END IF;
END;
/





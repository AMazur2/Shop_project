CREATE OR REPLACE TRIGGER TRIG_TZ
BEFORE INSERT ON P_TOWARY_ZAMOWIENIA
FOR EACH ROW
BEGIN
:NEW.ID_TZ := TZ_SEQ.NEXTVAL;
END;
/
CREATE OR REPLACE TRIGGER TZ_ILOSC
BEFORE UPDATE OF ILOSC ON P_TOWARY_ZAMOWIENIA
FOR EACH ROW
WHEN(NEW.ILOSC <= 0)
BEGIN
:NEW.ILOSC := :OLD.ILOSC;
END;

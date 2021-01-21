Delete FROM UrunBilgileri Where  urunID=2;

UPDATE UrunBilgileri SET miktar=0 WHERE urunID=3;

EXEC PROCEDURE_SATIN_AL(2);
INSERT INTO UrunSatýsbilgileri VALUES ('CD1',15);


CREATE TABLE UrunSatýsBilgileri( 
urun_kodu varchar2(11)PRIMARY KEY,
miktar INTEGER NOT NULL);


ALTER TABLE UrunBilgileri ADD urun_kod varchar2(10);

ALTER TABLE UrunBilgileri
DROP CONSTRAINT URUNBILGILERI_FK1;

drop table urunsatýsbýlgýlerý;
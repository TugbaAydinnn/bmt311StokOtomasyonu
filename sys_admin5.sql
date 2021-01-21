CREATE TABLE PersonelBilgileri( 
tcNumarasi varchar2(11) PRIMARY KEY,
ad varchar2(50),
soyad varchar2(50),
sifre varchar2(50) NOT NULL,
telNo varchar2(15) UNIQUE NOT NULL ,
cinsiyet varchar(5),
okulDurumu varchar2(50),
departman varchar2(50),
departmanID varchar2(11),
maas Integer NOT NULL

);
drop table PersonelBilgileri;
delete from PersonelBilgileri;

create or replace PROCEDURE seleccionarPROCEDURE_PERSONEL(registros out sys_refcursor) 
AS
BEGIN
OPEN registros FOR SELECT * FROM PersonelBilgileri;
END;

CREATE TABLE MusteriBilgileri( 
tcNumarasi varchar2(11) PRIMARY KEY,
ad varchar2(50),
soyad varchar2(50),
sifre varchar2(50) NOT NULL,
telNo varchar2(15) UNIQUE NOT NULL ,
cinsiyet varchar(5)
);

drop table ToplamCalýsan;

select * from UrunBilgileri;
CREATE TABLE UrunBilgileri( 
urunID varchar2(11) PRIMARY KEY,
miktar INTEGER NOT NULL,
urun_turu varchar2(50),
urun_ozelligi varchar2(50) NOT NULL,
urun_cinsiyet varchar2(5) NOT NULL,
beden varchar(5),
fiyat INTEGER NOT NULL,
urun_renk varchar2(15)
);
CREATE TABLE ToplamCalisan(
departmanID varchar2(11),
calisanSayisi INTEGER,
departman varchar2(50)

);

CREATE TABLE IadeBilgileri(
urunID varchar2(11),
ad varchar2(50),
soyad varchar2(50),
telefon  varchar2(15),
iadeSebep varchar2(50),
iadeAcýklama varchar2(60)
);
drop table SatisBilgileri;

CREATE TABLE SatisBilgileri(
urunID varchar2(11),
ilkMiktar INTEGER

);

CREATE TABLE TarihBilgisi(
urunID varchar2(11),
tarih Date

); 
select * from  TarihBilgisi;
drop table   TarihBilgisi;

CREATE VIEW SATISBIL_V AS
SELECT s.urunId,s.ilkMiktar,u.miktar FROM SatisBilgileri s FULL JOIN UrunBilgileri u ON s.urunID=u.urunID;
select * from  SATISBIL_V ;

CREATE VIEW SATISTARIH_V AS
SELECT u.urunID,u.urun_turu,u.urun_ozelligi,u.urun_cinsiyet,u.beden,u.urun_renk,t.tarih FROM TarihBilgisi t FULL JOIN UrunBilgileri u ON t.urunID=u.urunID;

select * from  SATISTARIH_V ;
drop view SATISBIL_V;

drop view SATISTARIH_V ;


delete from SATISBIL_V where urunID=1;



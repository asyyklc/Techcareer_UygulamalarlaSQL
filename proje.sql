CREATE DATABASE ETRADE1

USE ETRADE1

CREATE TABLE Musteri(
id INT IDENTITY(1,1) PRIMARY KEY,
ad VARCHAR(50),
soyad VARCHAR(50),
email NVARCHAR(50),
sehir NVARCHAR(50),
kayit_tarihi DATETIME 
);

--Verileri daha �nce haz�rlad���m excel tablosundan �ektim.
INSERT INTO Musteri (ad,soyad,email,sehir,kayit_tarihi) VALUES ('Asyanur','K�l��','asya.kilic@gmail.com','�stanbul',' 2025-09-22  04:48:32')
INSERT INTO Musteri (ad,soyad,email,sehir,kayit_tarihi) VALUES ('Arda Ka�an','Kurto�lu','ardakagan.kurtoglu@outlook.com','�stanbul',' 2025-09-22  04:58:33')
INSERT INTO Musteri (ad,soyad,email,sehir,kayit_tarihi) VALUES ('Asl�','Demir','asli.demir@gmail.com','�zmir',' 2025-08-02  06:10:21')
INSERT INTO Musteri (ad,soyad,email,sehir,kayit_tarihi) VALUES ('Mehmet','�elik','mehmet.celik@gmail.com','Bursa',' 2025-08-02  01:34:16')
INSERT INTO Musteri (ad,soyad,email,sehir,kayit_tarihi) VALUES ('Zeynep','Arslan','zeynep.arslan@gmail.com','Antalya',' 2025-07-13  05:08:36')
INSERT INTO Musteri (ad,soyad,email,sehir,kayit_tarihi) VALUES ('Murat','Kara','murat.kara@outlook.com','�stanbul',' 2025-07-10  08:21:30')
INSERT INTO Musteri (ad,soyad,email,sehir,kayit_tarihi) VALUES ('Fatma','Ak','fatma.ak@gmail.com','Ankara',' 2025-07-06  01:48:38')
INSERT INTO Musteri (ad,soyad,email,sehir,kayit_tarihi) VALUES ('Ahmet','Ko�','ahmet.koc@gmail.com','�zmir',' 2025-06-30  09:28:39')
INSERT INTO Musteri (ad,soyad,email,sehir,kayit_tarihi) VALUES ('Seda','�zt�rk','seda.ozturk@outlook.com','Bursa',' 2025-06-07  11:38:40')
INSERT INTO Musteri (ad,soyad,email,sehir,kayit_tarihi) VALUES ('Kerem','�ahin','kerem.sahin@gmail.com','Antalya',' 2025-06-29  10:32:41')


CREATE TABLE Kategori(
id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
ad NVARCHAR(50)
);

INSERT INTO Kategori (ad) VALUES ('Ev & Ya�am')
INSERT INTO Kategori (ad) VALUES ('Elektronik')
INSERT INTO Kategori (ad) VALUES ('Giyim')
INSERT INTO Kategori (ad) VALUES ('K�rtasiye')
INSERT INTO Kategori (ad) VALUES ('Kozmetik & Ki�isel Bak�m')
INSERT INTO Kategori (ad) VALUES ('Aksesuar')
INSERT INTO Kategori (ad) VALUES ('S�permarket')
INSERT INTO Kategori (ad) VALUES ('Spor & Outdoor')
INSERT INTO Kategori (ad) VALUES ('Petshop')
INSERT INTO Kategori (ad) VALUES ('Otomotiv & Motosiklet')


CREATE TABLE Satici(
id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
ad NVARCHAR(50),
adres NVARCHAR(200)
);

INSERT INTO Satici (ad,adres) VALUES ('TechMarket','EVC�LER-G�LTEPE MAH.PAPATYA SOKAK NO:363 114571 �AYIRALAN/YOZGAT')
INSERT INTO Satici (ad,adres) VALUES ('FashionWorld','BA�ARAN MAH.1.G�Z SOKAK NO:314 85995 OSMANGAZ�/BURSA')
INSERT INTO Satici (ad,adres) VALUES ('K�rtasiye D�nyas�','CAM�NUR MAH.0802. SOKAK NO:161 95504 TARSUS/MERS�N')
INSERT INTO Satici (ad,adres) VALUES ('G�zellikMarketi','M�S�NL�-KALE MAH.�ST�KLAL CADDES� SOKAK NO:649 110954 �ORLU/TEK�RDA�')
INSERT INTO Satici (ad,adres) VALUES ('AutoMotive','ULUA�A� K�Y� MAH.MERKEZ C MEVK� SOKAK NO:209 112450 OF/TRABZON')
INSERT INTO Satici (ad,adres) VALUES ('AksesuarSepeti','S�MER MAH.440. SOKAK NO:506 96717 KONAK/�ZM�R')
INSERT INTO Satici (ad,adres) VALUES ('S�perMarketiniz','PINARCIK MAH.BALTALAR SOKAK NO:609 89159 SER�NH�SAR/DEN�ZL�')
INSERT INTO Satici (ad,adres) VALUES ('EveDair','�UKURKUYU-CAM� MAH.���EKL�BEL� SOKAK NO:258 106219 BOR/N��DE')
INSERT INTO Satici (ad,adres) VALUES ('SporAktif','KABAA�A� MAH.GAZ� BULVARI SOKAK NO:101 94921 ULUBORLU/ISPARTA')
INSERT INTO Satici (ad,adres) VALUES ('CutiePShop','YALINTA�-ATAT�RK MAH.51. SOKAK NO:694 86730 MUSTAFAKEMALPA�A/BURSA')
INSERT INTO Satici (ad,adres) VALUES ('Technoshop','FAT�H MAH.4583. SOKAK NO:46 94569 ISPARTA MERKEZ/ISPARTA')
INSERT INTO Satici (ad,adres) VALUES ('YourMarket','FATIH MAH.PLEVNE CADDES� SOKAK NO:563 119342 SANCAKTEPE/�STANBUL')
INSERT INTO Satici (ad,adres) VALUES ('BeautyC','ATAMER MAH.2581. SOKAK NO:529 96650 KONAK/�ZM�R')
INSERT INTO Satici (ad,adres) VALUES ('HomeR','KONAK MAH.HAM�T ��NE CADDES� SOKAK NO:673 85599 BURDUR MERKEZ/BURDUR')
INSERT INTO Satici (ad,adres) VALUES ('HedefMarket','GAZ� MUSTAFA KEMALPA�A MAH.KARACAN SOKAK NO:160 110896 �ERKEZK�Y/TEK�RDA�')
INSERT INTO Satici (ad,adres) VALUES ('Sportif','FAT�H MAH.2757. SOKAK NO:856 116027 KIRIKKALE MERKEZ/KIRIKKALE')
INSERT INTO Satici (ad,adres) VALUES ('PatiliYa�am','�HSAN�YE MERKEZ MAH.4375.. SOKAK NO:607 100231 G�LC�K/KOCAEL�')


CREATE TABLE Urun(
id INT PRIMARY KEY IDENTITY(1,1) ,
ad NVARCHAR(50) NOT NULL,
fiyat DECIMAL(10,2) NOT NULL,
stok INT,
kategori_id INT NOT NULL,
satici_id INT NOT NULL,
CONSTRAINT urun_kategori_id FOREIGN KEY (kategori_id) REFERENCES Kategori(id),
CONSTRAINT urun_satici_id FOREIGN KEY (satici_id) REFERENCES Satici(id)
);

INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Gaming Laptop',52499.99,23,1,1)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Bluetooth Kulakl�k',8450.00,32,1,1)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Mekanik Klavye',1750.50,14,1,11)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Ti��rt',890.00,68,3,2)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Kot Pantolon',2250.00,46,3,2)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Sneaker',5450.00,39,3,2)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Defter Seti',76.50,20,4,3)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Kalem Kutusu',335.00,64,4,3)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('�izim Defteri',120.00,41,4,3)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('�ampuan',132.00,11,5,13)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Parf�m',1250.00,37,5,4)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Nemlendirici Krem',385.00,9,5,4)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Otomobil Lasti�i',6000.00,18,10,5)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Motor Ya��',300.00,10,10,5)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Fren Balatas�',450.00,6,10,5)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Kolye',350.00,24,6,6)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Bileklik',189.90,30,6,6)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Saat',25550.00,5,6,6)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('S�t',65.00,13,7,12)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Peynir',349.75,22,7,7)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('�ikolata',22.50,48,7,15)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Yumu�at�c�',125.00,8,7,15)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Masa',1550.00,15,1,8)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Sandalye',1300.00,21,1,8)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Avize',700.00,7,1,14)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Yoga Mat�',550.00,14,8,16)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Ko�u Ayakkab�s�',5450.00,28,8,16)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Futbol Topu',320.00,34,8,9)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Kedi Mamas�',190.00,12,9,10)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('T�y Toplama Rulosu',75.00,32,9,17)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Tablet',36200.00,16,2,11)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Ak�ll� Telefon',78500.00,21,2,1)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Ak�ll� Saat',14500.00,11,2,1)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Sweatshirt',1599.99,33,3,2)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Ceket',1780.00,17,3,2)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Mont',2250.00,11,3,2)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Marker Seti',449.99,24,4,3)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Cetvel',50.00,36,4,3)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Boyama Kitab�',125.00,20,4,3)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Y�z�k',200.00,22,6,6)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Tak� Kutusu',499.00,15,6,6)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('G�zl�k',550.00,24,6,6)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Bula��k Deterjan�',125.00,9,7,12)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('�ama��r Suyu',75.00,72,7,12)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Kahve Makinesi',2500.00,9,2,1)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('K�pek Mamas�',250.00,36,9,17)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Kedi Oyunca��',75.00,30,9,17)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Mama Kab�',50.00,40,9,10)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Drone',9850.00,4,2,1)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Powerbank',450.00,12,2,11)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Kablosuz Mouse',200.00,19,2,11)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Makyaj F�r�as�',99.99,30,5,13)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Ruj',85.00,24,5,13)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('G�z Far�',145.00,2,5,13)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Hal�',1200.00,16,1,8)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Perde',850.00,28,1,14)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Yatak �rt�s�',750.00,10,1,14)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Protein Tozu',350.00,6,8,9)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('A��rl�k Seti',1000.00,8,8,9)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Spor �antas�',450.00,19,8,16)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Pati Ta��ma �antas�',320.00,7,9,10)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Kedi T�rmalama Tahtas�',250.00,3,9,10)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('K�pek Tasmas�',120.00,35,9,17)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('V�cut Speyi',355.00,20,5,4)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('�ay',140.00,17,7,7)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('T�rk Kahvesi',120.00,32,7,7)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Cips',55.00,24,7,12)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Kuru Yemi�',96.00,40,7,12)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Bitki �ay�',78.00,29,7,7)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Gofret',26.00,72,7,12)


CREATE TABLE Siparis(
id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
musteri_id INT NOT NULL,
tarih DATETIME,
toplam_tutar DECIMAL(10,2) NOT NULL,
odeme_turu NVARCHAR(20),
CONSTRAINT siparis_musteri_id FOREIGN KEY (musteri_id) REFERENCES Musteri(id)
);


INSERT INTO Siparis (musteri_id,tarih,toplam_tutar,odeme_turu) VALUES (1,' 2025-09-24  04:48:32',2525.00,'Kredi Kart�')
INSERT INTO Siparis (musteri_id,tarih,toplam_tutar,odeme_turu) VALUES (1,' 2025-10-06  04:58:33',957.50,'Banka Kart�')
INSERT INTO Siparis (musteri_id,tarih,toplam_tutar,odeme_turu) VALUES (1,' 2025-12-02  06:10:21',2535.00,'Kredi Kart�')
INSERT INTO Siparis (musteri_id,tarih,toplam_tutar,odeme_turu) VALUES (1,' 2026-01-01  01:34:16',207.50,'Banka Kart�')
INSERT INTO Siparis (musteri_id,tarih,toplam_tutar,odeme_turu) VALUES (2,' 2025-09-29  05:08:36',25550.00,'Kredi Kart�')
INSERT INTO Siparis (musteri_id,tarih,toplam_tutar,odeme_turu) VALUES (2,' 2025-10-10  08:21:30',1750.50,'Kredi Kart�')
INSERT INTO Siparis (musteri_id,tarih,toplam_tutar,odeme_turu) VALUES (2,' 2025-10-19  01:48:38',90.00,'Banka Kart�')
INSERT INTO Siparis (musteri_id,tarih,toplam_tutar,odeme_turu) VALUES (3,' 2025-08-02  09:28:39',8450.00,'Kredi Kart�')
INSERT INTO Siparis (musteri_id,tarih,toplam_tutar,odeme_turu) VALUES (3,' 2025-09-07  11:38:40',10900.00,'Kredi Kart�')
INSERT INTO Siparis (musteri_id,tarih,toplam_tutar,odeme_turu) VALUES (3,' 2025-09-29  16:32:41',153.00,'Kredi Kart�')
INSERT INTO Siparis (musteri_id,tarih,toplam_tutar,odeme_turu) VALUES (4,' 2025-08-29  13:16:42',52499.99,'Banka Kart�')
INSERT INTO Siparis (musteri_id,tarih,toplam_tutar,odeme_turu) VALUES (5,' 2025-09-20  21:21:43',1698.00,'Kredi Kart�')
INSERT INTO Siparis (musteri_id,tarih,toplam_tutar,odeme_turu) VALUES (5,' 2025-09-21  02:49:44',1800.00,'Banka Kart�')
INSERT INTO Siparis (musteri_id,tarih,toplam_tutar,odeme_turu) VALUES (6,' 2025-07-29  01:52:45',6750.00,'Kredi Kart�')
INSERT INTO Siparis (musteri_id,tarih,toplam_tutar,odeme_turu) VALUES (7,' 2025-08-03  11:27:46',2342.00,'Kredi Kart�')
INSERT INTO Siparis (musteri_id,tarih,toplam_tutar,odeme_turu) VALUES (7,' 2025-09-11  16:09:47',889.90,'Kredi Kart�')
INSERT INTO Siparis (musteri_id,tarih,toplam_tutar,odeme_turu) VALUES (7,' 2025-10-29  13:32:48',669.75,'Kredi Kart�')
INSERT INTO Siparis (musteri_id,tarih,toplam_tutar,odeme_turu) VALUES (8,' 2025-10-02  07:10:49',10000.00,'Banka Kart�')
INSERT INTO Siparis (musteri_id,tarih,toplam_tutar,odeme_turu) VALUES (8,' 2025-10-28  04:27:50',7250.00,'Banka Kart�')
INSERT INTO Siparis (musteri_id,tarih,toplam_tutar,odeme_turu) VALUES (9,' 2025-11-07  09:08:51',87400.00,'Banka Kart�')
INSERT INTO Siparis (musteri_id,tarih,toplam_tutar,odeme_turu) VALUES (10,' 2025-10-29  20:56:52',9850.00,'Kredi Kart�')
INSERT INTO Siparis (musteri_id,tarih,toplam_tutar,odeme_turu) VALUES (10,' 2025-12-05  22:50:53',1598.00,'Kredi Kart�')
INSERT INTO Siparis (musteri_id,tarih,toplam_tutar,odeme_turu) VALUES (3,' 2026-01-09  21:42:54',2040.00,'Kredi Kart�')
INSERT INTO Siparis (musteri_id,tarih,toplam_tutar,odeme_turu) VALUES (1,' 2026-02-13  11:11:11',1139.95,'Kredi Kart�')
INSERT INTO Siparis (musteri_id,tarih,toplam_tutar,odeme_turu) VALUES (4,' 2026-01-29  10:30:56',4300.00,'Kredi Kart�')
INSERT INTO Siparis (musteri_id,tarih,toplam_tutar,odeme_turu) VALUES (4,' 2026-02-01  03:49:57',18349.99,'Kredi Kart�')
INSERT INTO Siparis (musteri_id,tarih,toplam_tutar,odeme_turu) VALUES (5,' 2025-09-19  05:31:58',1475.00,'Kredi Kart�')
INSERT INTO Siparis (musteri_id,tarih,toplam_tutar,odeme_turu) VALUES (9,' 2025-10-29  06:48:05',36200.00,'Kredi Kart�')
INSERT INTO Siparis (musteri_id,tarih,toplam_tutar,odeme_turu) VALUES (8,' 2025-11-14  11:12:02',6320.00,'Kredi Kart�')
INSERT INTO Siparis (musteri_id,tarih,toplam_tutar,odeme_turu) VALUES (6,' 2025-12-18  23:20:55',2844.97,'Banka Kart�')
INSERT INTO Siparis (musteri_id,tarih,toplam_tutar,odeme_turu) VALUES (3,' 2025-12-20  19:32:04',44650.00,'Banka Kart�')
INSERT INTO Siparis (musteri_id,tarih,toplam_tutar,odeme_turu) VALUES (2,' 2025-01-22  04:25:33',13040.00,'Banka Kart�')


CREATE TABLE Siparis_Detay(
id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
siparis_id INT NOT NULL,
urun_id INT NOT NULL,
adet INT NOT NULL,
fiyat DECIMAL(10,2) NOT NULL,
CONSTRAINT sdetay_siparis_id FOREIGN KEY (siparis_id) REFERENCES Siparis(id),
CONSTRAINT sdetay_urun_id FOREIGN KEY (urun_id) REFERENCES Urun(id)
);

INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (1,5,1,2250.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (1,53,1,85.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (1,29,1,190.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (2,4,1,890.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (2,21,3,22.50)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (3,35,1,1780.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (3,40,2,200.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (3,64,1,355.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (4,67,1,55.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (4,70,2,26.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (4,69,1,78.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (4,21,1,22.50)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (5,18,1,25550.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (6,3,1,1750.50)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (7,21,4,22.50)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (8,2,1,8450.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (9,6,2,5450.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (10,7,2,76.50)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (11,1,1,52499.99)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (12,41,2,499.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (12,50,1,450.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (12,62,1,250.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (13,47,2,75.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (13,55,1,1200.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (13,60,1,450.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (14,13,1,6000.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (14,14,1,300.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (14,15,1,450.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (15,16,2,350.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (15,17,1,189.90)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (16,8,1,335.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (16,9,2,120.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (16,10,1,132.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (16,11,1,1250.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (16,12,1,385.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (17,19,3,65.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (17,20,1,349.75)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (17,22,1,125.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (18,23,1,1550.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (18,24,4,1300.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (18,25,1,700.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (18,56,3,850.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (19,27,1,5450.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (19,58,1,350.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (19,59,1,1000.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (19,60,1,450.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (20,2,1,8450.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (20,32,1,78500.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (20,50,1,450.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (21,49,1,9850.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (22,65,1,140.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (22,66,4,120.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (22,67,1,55.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (22,68,2,96.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (22,69,1,78.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (22,70,3,26.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (22,22,1,125.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (22,43,1,125.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (22,44,1,75.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (22,46,1,250.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (23,63,1,120.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (23,61,1,320.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (23,57,1,750.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (23,56,1,850.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (24,54,2,145.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (24,52,5,99.99)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (24,51,1,200.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (24,48,3,50.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (25,45,1,2500.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (25,42,1,550.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (25,39,10,125.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (26,36,1,2250.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (26,34,1,1599.99)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (26,33,1,14500.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (27,30,3,75.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (27,11,1,1250.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (28,31,1,36200.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (29,28,1,320.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (29,27,1,5450.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (29,26,1,550.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (30,12,2,385.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (30,11,1,1250.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (30,52,3,99.99)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (30,53,2,85.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (30,64,1,355.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (31,31,1,36200.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (31,2,1,8450.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (32,4,4,890.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (32,5,1,2250.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (32,6,1,5450.00)
INSERT INTO Siparis_Detay (siparis_id,urun_id,adet,fiyat) VALUES (32,36,1,2250.00)



-- DML komutlar�n�n kullan�m� i�in i�lemler;

-- M��teri ID si 4 olan m��terinin adres de�i�ikli�i.
UPDATE Musteri SET sehir = 'Mersin' WHERE id = 4

--Sat�c�n�n adres de�i�iklili�i
UPDATE Satici SET adres = 'KARDE�LER MAH. 432. SOK. NO:23 34012 �SK�DAR/�STANBUL' WHERE id = 5

-- Urun tablosunda stok kolonunun 0 dan k���k olamayaca��n� eklmeyi unutmu�uz.
ALTER TABLE Urun ADD CHECK (stok >= 0);


--Truncate komutunu kullanabilmek i�in m��teri adres tablosu olu�turcam.
CREATE TABLE Adres(
id INT IDENTITY(1,1) PRIMARY KEY,
musteri_id INT,
adres_adi VARCHAR(50),
sehir Varchar(50),
ilce VARCHAR(50),
acik_adres VARCHAR(200),
CONSTRAINT adres_musteri_id FOREIGN KEY (musteri_id) REFERENCES Musteri(id)
);


--��ini verilerle doldural�m burada bir m��terinin birden fazla adresi var.
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('1','Ev Adresi','�stanbul','�i�li','Halaskargazi Mah. Abide-i H�rriyet Cad. No:32 Kat:3 Daire:6 �i�li/�stanbul')
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('1','�� Adresi','�stanbul','Kad�k�y','Moda Mah. Bahariye Cad. No:45 Kat:3 Daire:7 Kad�k�y/�stanbul')
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('2','Ev ','�stanbul','Bayrampa�a','Kocatepe Mah. H�rriyet Cad. No:78 Kat:2 Daire:5 Bayrampa�a/�stanbul')
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('3','Ev ','�zmir','�e�me','Ala�at� Mah. 13012. Sokak No:27 Kat:1 Daire:3 �e�me/�zmir')
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('3','D�kkan','�zmir','Fo�a','Atat�rk Mah. 905. Sokak No:14 Kat:2 Daire:5 Fo�a/�zmir')
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('4','Ev Adresi','Mersin','Mezitli','Viran�ehir Mah. 34215. Sokak No:18 Daire:4 Mezitli/Mersin')
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('4','Okul Adresi','Mersin','Yeni�ehir','Cumhuriyet Mah. 2857. Cadde No:42 Kat:3 Daire:7 Yeni�ehir/Mersin')
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('5','Ev','Antalya','Muratpa�a','Fener Mah. Lara Cad. No:128 Kat:2 Daire:5 Muratpa�a/Antalya')
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('6','Ev','�stanbul','Be�ikta�','Levent Mah. B�y�kdere Cad. No:88 Kat:2 Daire:7 Be�ikta�/�stanbul')
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('7','Ev Adresi','Ankara','�ankaya','K�z�lay Mah. Atat�rk Bulvar� No:92 Kat:4 Daire:11 �ankaya/Ankara')
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('8','Ev Adresi','�zmir','Kar��yaka','Bostanl� Mah. 2018. Sokak No:45 Kat:4 Daire:9 Kar��yaka/�zmir')
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('9','Ev Adresi','Bursa','Osmangazi','H�davendigar Mah. 6. G�zel Sokak No:18 Kat:2 Daire:3 Osmangazi/Bursa')
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('10','Ev Adresi','Antalya','Serik','Belek Mah. 1023. Sokak No:18 Kat:2 Daire:4 Serik/Antalya')
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('10','�� Adresi','Antalya','Serik','Orta Mah. Cumhuriyet Cad. No:75 Kat:1 Daire:2 Serik/Antalya')
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('11','Ev','Gaziantep','�ehitkamil','Karata� Mah. 52014. Cadde No:45 Kat:2 Daire:4 �ehitkamil/Gaziantep')
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('12','Ev','�zmir','Bornova','Kaz�mdirik Mah. 372. Sokak No:22 Kat:3 Daire:6 Bornova/�zmir')
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('12','�� ','�zmir','Bornova','Mevlana Mah. 6273/2 Sokak No:31 Kat:1 Daire:2 Bornova/�zmir')

SELECT * FROM Adres

-- M��teri 4 kullanmad��� adresini kald�rmak istiyor.
-- Fakat sildi�imiz sat�rda identity sat�rlar� silinen sat�rlar� doldurmad��� i�in
-- truncate table ile tabloyu bo�alt�p verileri tekrar insert komutu ile verileri 
-- tekrar ekleyece�iz.

DELETE FROM Adres WHERE id = 7

TRUNCATE TABLE Adres    -- Verileri sildik

-- Verileri tekrar ekliyoruz.
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('1','Ev Adresi','�stanbul','�i�li','Halaskargazi Mah. Abide-i H�rriyet Cad. No:32 Kat:3 Daire:6 �i�li/�stanbul')
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('1','�� Adresi','�stanbul','Kad�k�y','Moda Mah. Bahariye Cad. No:45 Kat:3 Daire:7 Kad�k�y/�stanbul')
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('2','Ev ','�stanbul','Bayrampa�a','Kocatepe Mah. H�rriyet Cad. No:78 Kat:2 Daire:5 Bayrampa�a/�stanbul')
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('3','Ev ','�zmir','�e�me','Ala�at� Mah. 13012. Sokak No:27 Kat:1 Daire:3 �e�me/�zmir')
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('3','D�kkan','�zmir','Fo�a','Atat�rk Mah. 905. Sokak No:14 Kat:2 Daire:5 Fo�a/�zmir')
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('4','Ev Adresi','Mersin','Mezitli','Viran�ehir Mah. 34215. Sokak No:18 Daire:4 Mezitli/Mersin')
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('5','Ev','Antalya','Muratpa�a','Fener Mah. Lara Cad. No:128 Kat:2 Daire:5 Muratpa�a/Antalya')
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('6','Ev','�stanbul','Be�ikta�','Levent Mah. B�y�kdere Cad. No:88 Kat:2 Daire:7 Be�ikta�/�stanbul')
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('7','Ev Adresi','Ankara','�ankaya','K�z�lay Mah. Atat�rk Bulvar� No:92 Kat:4 Daire:11 �ankaya/Ankara')
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('8','Ev Adresi','�zmir','Kar��yaka','Bostanl� Mah. 2018. Sokak No:45 Kat:4 Daire:9 Kar��yaka/�zmir')
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('9','Ev Adresi','Bursa','Osmangazi','H�davendigar Mah. 6. G�zel Sokak No:18 Kat:2 Daire:3 Osmangazi/Bursa')
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('10','Ev Adresi','Antalya','Serik','Belek Mah. 1023. Sokak No:18 Kat:2 Daire:4 Serik/Antalya')
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('10','�� Adresi','Antalya','Serik','Orta Mah. Cumhuriyet Cad. No:75 Kat:1 Daire:2 Serik/Antalya')
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('11','Ev','Gaziantep','�ehitkamil','Karata� Mah. 52014. Cadde No:45 Kat:2 Daire:4 �ehitkamil/Gaziantep')
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('12','Ev','�zmir','Bornova','Kaz�mdirik Mah. 372. Sokak No:22 Kat:3 Daire:6 Bornova/�zmir')
INSERT INTO Adres (musteri_id,adres_adi,sehir,ilce,acik_adres) VALUES ('12','�� ','�zmir','Bornova','Mevlana Mah. 6273/2 Sokak No:31 Kat:1 Daire:2 Bornova/�zmir')


--�imdi bu tablo projede istenmedi�i i�in tabloyu siliyoruz.
DROP TABLE Adres





--RAPORLAMA SORGULARI

-- Temel Sorgular

--En �ok sipari� veren 5 m��teri
SELECT TOP 5 M.id AS musteri_id, M.ad AS musteri_adi, M.soyad AS musteri_soyadi, COUNT(S.id) AS siparis_sayisi
FROM Musteri M
JOIN Siparis S ON M.id =S.musteri_id
GROUP BY M.id, M.ad, M.soyad
ORDER BY COUNT(S.musteri_id) DESC;

--En �ok sat�lan �r�nler
SELECT U.id AS urun_id, U.ad AS urun_adi, SUM(SD.adet) AS satilan_toplam_adet
FROM Urun U
JOIN Siparis_Detay SD ON U.id = SD.urun_id
GROUP BY U.id, U.ad 
ORDER BY SUM(SD.adet) DESC;

--En y�ksek cirosu olan sat�c�lar
SELECT ST.id, ST.ad, SUM(S.toplam_tutar) AS toplam_tutar
FROM Satici ST
JOIN Urun U ON ST.id = U.satici_id
JOIN Siparis_Detay SD ON U.id = SD.urun_id
JOIN Siparis S ON SD.siparis_id = S.id
GROUP BY ST.id, ST.ad
ORDER BY SUM(S.toplam_tutar) DESC;


--�ehirlere g�re m��teri say�s�
SELECT M.sehir ,COUNT(M.id) AS sehir_sayisi
FROM Musteri M
GROUP BY M.sehir
ORDER BY 1 ASC;

--Kategori bazl� toplam sat��lar
SELECT K.id ,K.ad , SUM(S.toplam_tutar) AS toplam_tutar , AVG(S.toplam_tutar) AS ortalama_tutar ,
MIN(S.toplam_tutar)  AS min_tutar , MAX(S.toplam_tutar) AS max_tutar
FROM Siparis S
JOIN Siparis_Detay SD ON SD.siparis_id = S.id
JOIN Urun U ON U.id = SD.urun_id
JOIN Kategori K ON K.id = U.kategori_id
GROUP BY K.id ,K.ad
ORDER BY 3 DESC;

--Aylara g�re sipari� say�s�
SELECT YEAR(tarih) AS yil,  MONTH(tarih) AS ay, COUNT(*) AS siparis_sayisi
FROM Siparis S
GROUP BY YEAR(tarih), MONTH(tarih)
ORDER BY YEAR(tarih), MONTH(tarih);

--Sipari�lerde m��teri bilgisi + �r�n bilgisi + sat�c� bilgisi
SELECT M.id AS musteri_id , M.ad AS musteri_adi, M.soyad AS musteri_soyadi, M.email AS musteri_maili , M.sehir AS musterinin_ikametgahi, 
U.id AS urun_id , U.ad AS urun_adi , U.fiyat AS urun_fiyati, U.stok AS urun_stok_miktari ,
U.kategori_id AS urun_kategori_id,
ST.id AS satici_id , ST.ad AS satici_adi , ST.adres AS satici_adresi

FROM Siparis S 
JOIN Musteri M ON M.id = S.musteri_id
JOIN Siparis_Detay SD ON SD.siparis_id = S.id
JOIN Urun U ON U.id = SD.urun_id
JOIN Satici ST ON ST.id = U.satici_id
ORDER BY S.id;


--Hi� sat�lmam�� �r�nleri g�rmek i�in birka� yeni �r�n ekledim.
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Elektrikli S�p�rge',29499.99,10,1,1)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('G�mlek',1190.00,15,3,2)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Deri Ceket',3750.00,8,3,2)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Fincan Tak�m�',1850.00,10,1,14)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('�ama��r Makinesi',22000.00,5,1,1)

SELECT U.*
FROM Siparis S
JOIN Siparis_Detay SD ON SD.siparis_id = S.id
RIGHT JOIN Urun U ON U.id = SD.urun_id
WHERE S.id IS NULL

DELETE FROM Urun WHERE id = 75;

SELECT * FROM Urun


--Hi� sipari� vermemi� m��terileri g�rmek i�in yeni veri ekledim.
INSERT INTO Musteri (ad,soyad,email,sehir,kayit_tarihi) VALUES ('Cengiz','Y�lmaz','cengiz.yilmaz@gmail.com','Gaziantep',' 2025-09-12  16:32:20')
INSERT INTO Musteri (ad,soyad,email,sehir,kayit_tarihi) VALUES ('Bar��','Yal��nkaya','baris.ylcnkaya@gmail.com','�zmir',' 2026-01-08  10:12:50')

SELECT *
FROM Siparis S
RIGHT JOIN Musteri M ON  M.id = S.musteri_id
WHERE S.musteri_id IS NULL


--G�ncel stok miktar�
SELECT U.id AS urun_id, U.ad AS urun_adi, U.stok AS baslangic_stok, 
SUM(SD.adet) AS toplam_satis, U.stok - SUM(SD.adet) AS guncel_stok
FROM Urun U
LEFT JOIN Siparis_Detay SD ON U.id = SD.urun_id
GROUP BY U.id, U.ad, U.stok
ORDER BY urun_id ;  



--En �ok kazan� sa�layan 3 kategori
SELECT TOP 3 SD.siparis_id AS SiparisID , SD.urun_id AS UrunID , U.ad AS UrunADI, SD.adet AS AlinanAdet ,
SD.fiyat AS BirimFiyati , U.stok AS UrunStokSay�s�, K.ad AS KategoriAdi , K.id AS KategoriID,
SUM(SD.adet * SD.fiyat) AS ToplamTutar
FROM Siparis_Detay SD 
JOIN Urun U ON U.id = SD.urun_id
JOIN Kategori K ON K.id = U.kategori_id
GROUP BY SD.siparis_id, SD.urun_id, U.ad, SD.adet, SD.fiyat, U.stok, K.ad, K.id
ORDER BY SUM(SD.adet * SD.fiyat) DESC




--Ortalama sipari� tutar�n� ge�en sipari�ler
SELECT S.*  FROM Siparis S
WHERE S.toplam_tutar > (SELECT AVG(toplam_tutar) FROM Siparis);


--Case ile sipari� tutarlar�n�n ortalama tutar ile kar��la�t�r�lmas�n� yapal�m
SELECT S.id AS siparis_id, S.musteri_id, S.toplam_tutar, (SELECT AVG(toplam_tutar) FROM Siparis) AS ortalama_tutar,
    CASE 
        WHEN S.toplam_tutar > (SELECT AVG(toplam_tutar) FROM Siparis) THEN '�st�nde'
        WHEN S.toplam_tutar = (SELECT AVG(toplam_tutar) FROM Siparis) THEN 'E�it'
        ELSE 'Alt�nda'
    END AS durum
FROM Siparis S;



--En az bir kere elektronik �r�n alm�� m��teriler
SELECT DISTINCT M.id, M.ad, M.soyad , U.id AS UrunID , U.ad AS UrunAdi
FROM Musteri M
JOIN Siparis S ON M.id = S.musteri_id
JOIN Siparis_Detay SD ON S.id = SD.siparis_id
JOIN Urun U ON U.id = SD.urun_id
WHERE U.kategori_id = 1;









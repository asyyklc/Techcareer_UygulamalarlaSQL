--RAPORLAMA SORGULARI

-- Temel Sorgular

--En çok sipariþ veren 5 müþteri
SELECT TOP 5 M.id AS musteri_id, M.ad AS musteri_adi, M.soyad AS musteri_soyadi, COUNT(S.id) AS siparis_sayisi
FROM Musteri M
JOIN Siparis S ON M.id =S.musteri_id
GROUP BY M.id, M.ad, M.soyad
ORDER BY COUNT(S.musteri_id) DESC;

--En çok satýlan ürünler
SELECT U.id AS urun_id, U.ad AS urun_adi, SUM(SD.adet) AS satilan_toplam_adet
FROM Urun U
JOIN Siparis_Detay SD ON U.id = SD.urun_id
GROUP BY U.id, U.ad 
ORDER BY SUM(SD.adet) DESC;

--En yüksek cirosu olan satýcýlar
SELECT ST.id, ST.ad, SUM(S.toplam_tutar) AS toplam_tutar
FROM Satici ST
JOIN Urun U ON ST.id = U.satici_id
JOIN Siparis_Detay SD ON U.id = SD.urun_id
JOIN Siparis S ON SD.siparis_id = S.id
GROUP BY ST.id, ST.ad
ORDER BY SUM(S.toplam_tutar) DESC;


--Þehirlere göre müþteri sayýsý
SELECT M.sehir ,COUNT(M.id) AS sehir_sayisi
FROM Musteri M
GROUP BY M.sehir
ORDER BY 1 ASC;

--Kategori bazlý toplam satýþlar
SELECT K.id ,K.ad , SUM(S.toplam_tutar) AS toplam_tutar , AVG(S.toplam_tutar) AS ortalama_tutar ,
MIN(S.toplam_tutar)  AS min_tutar , MAX(S.toplam_tutar) AS max_tutar
FROM Siparis S
JOIN Siparis_Detay SD ON SD.siparis_id = S.id
JOIN Urun U ON U.id = SD.urun_id
JOIN Kategori K ON K.id = U.kategori_id
GROUP BY K.id ,K.ad
ORDER BY 3 DESC;

--Aylara göre sipariþ sayýsý
SELECT YEAR(tarih) AS yil,  MONTH(tarih) AS ay, COUNT(*) AS siparis_sayisi
FROM Siparis S
GROUP BY YEAR(tarih), MONTH(tarih)
ORDER BY YEAR(tarih), MONTH(tarih);

--Sipariþlerde müþteri bilgisi + ürün bilgisi + satýcý bilgisi
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


--Hiç satýlmamýþ ürünleri görmek için birkaç yeni ürün ekledim.
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Elektrikli Süpürge',29499.99,10,1,1)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Gömlek',1190.00,15,3,2)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Deri Ceket',3750.00,8,3,2)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Fincan Takýmý',1850.00,10,1,14)
INSERT INTO Urun (ad,fiyat,stok,kategori_id,satici_id) VALUES ('Çamaþýr Makinesi',22000.00,5,1,1)

SELECT U.*
FROM Siparis S
JOIN Siparis_Detay SD ON SD.siparis_id = S.id
RIGHT JOIN Urun U ON U.id = SD.urun_id
WHERE S.id IS NULL

DELETE FROM Urun WHERE id = 75;

SELECT * FROM Urun


--Hiç sipariþ vermemiþ müþterileri görmek için yeni veri ekledim.
INSERT INTO Musteri (ad,soyad,email,sehir,kayit_tarihi) VALUES ('Cengiz','Yýlmaz','cengiz.yilmaz@gmail.com','Gaziantep',' 2025-09-12  16:32:20')
INSERT INTO Musteri (ad,soyad,email,sehir,kayit_tarihi) VALUES ('Barýþ','Yalçýnkaya','baris.ylcnkaya@gmail.com','Ýzmir',' 2026-01-08  10:12:50')

SELECT *
FROM Siparis S
RIGHT JOIN Musteri M ON  M.id = S.musteri_id
WHERE S.musteri_id IS NULL


--Güncel stok miktarý
SELECT U.id AS urun_id, U.ad AS urun_adi, U.stok AS baslangic_stok, 
SUM(SD.adet) AS toplam_satis, U.stok - SUM(SD.adet) AS guncel_stok
FROM Urun U
LEFT JOIN Siparis_Detay SD ON U.id = SD.urun_id
GROUP BY U.id, U.ad, U.stok
ORDER BY urun_id ;  



--En çok kazanç saðlayan 3 kategori
SELECT TOP 3 SD.siparis_id AS SiparisID , SD.urun_id AS UrunID , U.ad AS UrunADI, SD.adet AS AlinanAdet ,
SD.fiyat AS BirimFiyati , U.stok AS UrunStokSayýsý, K.ad AS KategoriAdi , K.id AS KategoriID,
SUM(SD.adet * SD.fiyat) AS ToplamTutar
FROM Siparis_Detay SD 
JOIN Urun U ON U.id = SD.urun_id
JOIN Kategori K ON K.id = U.kategori_id
GROUP BY SD.siparis_id, SD.urun_id, U.ad, SD.adet, SD.fiyat, U.stok, K.ad, K.id
ORDER BY SUM(SD.adet * SD.fiyat) DESC




--Ortalama sipariþ tutarýný geçen sipariþler
SELECT S.*  FROM Siparis S
WHERE S.toplam_tutar > (SELECT AVG(toplam_tutar) FROM Siparis);


--Case ile sipariþ tutarlarýnýn ortalama tutar ile karþýlaþtýrýlmasýný yapalým
SELECT S.id AS siparis_id, S.musteri_id, S.toplam_tutar, (SELECT AVG(toplam_tutar) FROM Siparis) AS ortalama_tutar,
    CASE 
        WHEN S.toplam_tutar > (SELECT AVG(toplam_tutar) FROM Siparis) THEN 'Üstünde'
        WHEN S.toplam_tutar = (SELECT AVG(toplam_tutar) FROM Siparis) THEN 'Eþit'
        ELSE 'Altýnda'
    END AS durum
FROM Siparis S;



--En az bir kere elektronik ürün almýþ müþteriler
SELECT DISTINCT M.id, M.ad, M.soyad , U.id AS UrunID , U.ad AS UrunAdi
FROM Musteri M
JOIN Siparis S ON M.id = S.musteri_id
JOIN Siparis_Detay SD ON S.id = SD.siparis_id
JOIN Urun U ON U.id = SD.urun_id
WHERE U.kategori_id = 1;
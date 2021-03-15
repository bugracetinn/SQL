-- WHERE -> nerede? anlamına gelir SQL dilinde de filtreleme amacı ile kullanılır.

SELECT sütun_adi,sütun_adi FROM tablo_adi WHERE status = 'xxx' -- -> şeklinde yazılabilir.

-- <----- örnek ---->

SELECT orderNumber,shippedDate FROM orders WHERE status = 'Shipped'

-- status(durumu) Shipped(kargolandı) olan verilerin orderNumber(siparişnumarası),shippedDate(kargolanma tarihi) bilgierini seçer gösterir.
 <----- örnek ----->
SELECT orderNumber,shippedDate FROM orders WHERE status = 'Shipped' AND shippedDate = '2003-05-22' 
-- -> AND ile de görmek istediğimiz başka bilgileride görebiliriz yukarıdaki örnekteki bilgilere ek 2003-05-22 tarihli kayıtı gösterir.

-- * AND = && şeklinde de yazılır.
-- * OR = || şeklinde de yazılır.

-- -> BETWEEN KOMUTU
BETWEEN = Arasında anlamına gelir.
-- <----- örnek ------->
SELECT orderNumber,shippedDate FROM orders WHERE status = 'Shipped' AND shippedDate >= '2003-05-01' AND shippedDate <= '2003-05-31'-> Şeklinde de bir sorgu yazılabilir.
SELECT orderNumber,shippedDate FROM orders WHERE status = 'Shipped' AND shippedDate BETWEEN '2003-05-01' AND '2003-05-31' -> Şeklinde yazarsak'da aynı sonucu alırız.

-- -> ORDER BY KOMUTU
-- - Küçük'ten büyüğ'e sıralar.
-- <----- örnek ------>
SELECT orderNumber,shippedDate FROM orders WHERE status = 'Shipped' AND shippedDate BETWEEN '2003-05-01' AND '2003-05-31'  ORDER BY shippedDate
-- -> ORDER BY DESC KOMUTU
-- - Büyük'ten Küçüğ!e sıralar.
-- <----- örnek ------>
SELECT orderNumber,shippedDate FROM orders WHERE status = 'Shipped' AND shippedDate BETWEEN '2003-05-01' AND '2003-05-31'  ORDER BY shippedDate DESC

-- -> IS NULL / IS NOT NULL
-- Boş ve boş olmayan 
-- <------ örnek ---->
SELECT * FROM orders WHERE status = 'SHIPPED' AND comments IS NULL 
-- > comments(yorumlar) sütunu null(boş) olan ve status(durum) sütunu SHIPPED(kargolanmış) olan verieri orders(siparişler) tablosunun hepsini(*) seç ve göster.

-- <------ örnek ---->
SELECT * FROM orders WHERE status = 'SHIPPED' AND comments IS NOT NULL
-- > comments(yorumlar) sütunu null(boş) olmayan ve status(durum) sütunu SHIPPED(kargolanmış) olan verieri orders(siparişler) tablosunun hepsini(*) seç ve göster.








-- SELECT = seç 
-- FROM = -den
-- AS = olarak
--DISTINC = farklı 
-- * = hepsini seçer

SELECT * FROM tablo_adı 

-- <------ örnek ---->  

-- -> SELECT * FROM customers 

customers tablasounda ki kayıtlı verilerin hepsini getir.


-- -> SELECT sütun_adı FROM tablo_adı

<------ örnek ------->

SELECT customerName FROM customers

customers tablosunda ki customerName tablosunda ki bilgileri getirir.

-> SELECT sütun_adı,diğer_sütun_adı, …. FROM tablo_adı
türkçe olarak aktarımı -> Oluşturulan tablodan istediğimiz sütün adlarını girererek o sütun adlarının bilgilerini gösterir.
 <------- örnek ------>
 SELECT customerName,contactFirstName,contactLastName FROM `customers`
 türkçe olarak aktarımı -> customers tablosundaki customerName,contactFirstName,contactLastName sütün adlarının bilgierlini seçer ve gösterir. 

-- -> AS FROM KOMUTU
SELECT sütun_adı AS ‘tablo sütun adı’ FROM tablo_adı         * sütun_adı=veri tabanında tablo oluştururken verilen isim  *tablo sütun adı = en başta sütun adı koyduğumuz yeri hangi isim ile görmek istediğimiz kısım
                                                                 *tablo_adı = en başta veritabınını kuararken tabloya verdiğimiz isin
-- <------ örnek -------->                                                                
                                                                 
SELECT customerName AS KULLANICIADLARI FROM customers
türkçe olarak aktarımı -> customers veritabanından tablo adı customerName olan bilgileri seç (SELECT) tablo adını customerName yerine KULLANICIADLARI olarak(AS) göster.

---> SELECT DISTINC
SELECT DISTINCT sutun_adi FROM tablo_adi 
türkçe olarak aktarımı -> sütün adındaki bilgieri aynı olanları gösterme sadece farklıları göster.

-- <------ örnek ------>
SELECT DISTINCT postalCode FROM customers
-- türkçe olarak aktarımı -> customers tablosundan postalCode sütunununda ki farklı girilmiş bilgileri seç 

-> SELECT COUNT(*)
-- COUNT(*) komutu ile kayıt sayısı listelenir.
SELECT COUNT(*) FROM tablo_adi

-- <------- örnek ---------->
 
 SELECT COUNT(*) FROM customers
-- türkçe olarak aktarımı -> customers tablosunda ki kayıtları seçer ve kaç tane kayıt olduğunu gösterir 

-- -> SELECT ...WHERE
-- WHERE komutu filtreleme için kullanılır.
SELECT sütun_adi FROM tablo_adi WHERE sütun_adi= 'xxx'

-- <------- örnek --------->

SELECT * FROM customers WHERE postalCode = '44000'
türkçe olarak aktarımı -> posta kodu 44000 olan kullanıcıları customers tablosundan seçer ve gösterir.

--  = yerine başka kullanma modelleri de vardır;
--  >,<,>=,<=,<>,BETWEEN,LIKE,IN gibi kullanımları da mevcuttur.

-- -> SELECT ... WHERE... AND/OR/NOT 
SELECT sütun_adi FROM tablo_adi WHERE sütun_adi= 'xxx' AND/OR/NOT sütun_adi='xxx'

<-------- örnek --------->

SELECT * FROM customers WHERE postalCode= '4400' AND credilimit > 100000
-- türkçe olarak aktarımı -> credilimit sütunundan kredi limiti 1000.000'den büyük ve posta kodu 4400 olam costumers tablosunda ki kullanıcıları seçer ve gösterir.

-- -> SELECT MAX KOMUTU
SELECT MAX(sütun_adi) FROM tablo_adi LIMIT 1 -- Şeklinde yazılır
--MAX en yüksek olanı getirir.
--LIMIT ise kaçtane veri satırı getirilceği yazılır.

-- <------ örnek --->
SELECT MAX(orderNumber) FROM orders LIMIT 1 -- sipariş numarası en büyük olanı seç = son verilen sipariş numarası

yada 

SELECT * FROM orders
WHERE orderNumber = (SELECT MAX(orderNumber) FROM orders LIMIT 1) -- Şeklinde yazılabilir bu sorguda son verilen sipariş numarasının tüm satır bilgilerini gösterir 
yada 
SELECT orderNumber FROM orders ORDER BY orderNumber DESC LIMIT 1 -- Yine son sipariş numarasını getirir ama metod olarak orderNumber sütuınu büyükten küçüğe sıralar ama limmit 1 dendiği için 1 tane veri getirir oda en büyüğü olur.









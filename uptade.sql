-- UPDATE = Güncelle

UPDATE tablo_adi
SET sütun_adi='istediğiniz güncelleme',sütun_adi='istediğiniz güncelleme' -- -> Bu kısımda güncelleceğiniz bilgiler girilir. 
WHERE sütun_adi='güncellemek istediğiniz değere sahip satır' -- -> Bu kısımda hangi bilgiye sahip satırındaki bilgileri güncelleceğiniz bilgi yazalır bir nevi filtreleme yapılır.
şeklinde yazılabilir.

-- <--- örnek ---->
UPDATE orders
SET shippedDate = '2021-03-11',status='Shipped',comments='yazmak istediğiniz yorum'
WHERE orderNumber = 10426

-- <---- örnek --->
UPDATE customers
-- Veritabanında satış danışmanının satış yaptığı kodunu güncellemek bu sorgu ile yapılır.
SET salesRepEmloyeeNumber=1401
WHERE salesRepEmloyeeNumber=14611 

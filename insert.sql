-- INSERT -> Ekle INTO -> İçime yani içine ekle anlamına gelir.

INSERT INTO tablo_adi VALUES(deger_1,deger_2,deger_3...) -- Şeklinde yazılır.
-- <--- örnek --->
--sipariş ekleme
INSERT INTO orders 
VALUES(10426,'2021-03-11','2121-03-13','NULL','In Process','',103) --> İstenen bilgiler sırasıyla yazılır ve eklenir.
 --yada
 INSERT INTO orders
 (orderNumber,  orderDate,requiredDate,status,customerNumber)
 VALUES
 (10427,'2021-03-13','2021-03-14',NULL,'In Process',NULL,112) -- Şeklinde de yazılabilir,

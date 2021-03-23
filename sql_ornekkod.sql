
 Şirketin her bir ofisinde kaç kişi çalışmaktadır?

SELECT a.officeCode,b.city, count(a.officeCode) as total
FROM employees a
INNER JOIN offices b
ON a.officeCode = b.officeCode GROUP BY a.officeCode



 Şirket 2003 yılı içerisinde toplam ne kadarlık tahsilat yapmıştır. (ipucu: payments tablosunda SUM, WHERE ve BETWEEN içeren SQL sorguları)
 
SELECT sum(amount) as totalprice from payments WHERE paymentDate BETWEEN '2003-01-01' AND '2003-12-31'

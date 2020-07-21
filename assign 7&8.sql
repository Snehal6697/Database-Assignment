show databases;
use assignment;
show tables;

SELECT count(onum) total_order
FROM orders
WHERE odate LIKE '03-OCT-%';

SELECT count(cname) empty_city
FROM customers
WHERE cname IS NOT NULL;

SELECT min(amt)  "smallest order",cnum
FROM orders
GROUP BY cnum;

SELECT *
FROM customers
WHERE cname LIKE 'G%'
ORDER BY cname;

SELECT max(rating) "highest rating"
FROM customers;

**Assignment 8**

SELECT onum,snum,amt,(amt*12)/100 commision
FROM orders;

SELECT onum,
       snum,
       amt,
       (amt*12)/100 commision
FROM orders;

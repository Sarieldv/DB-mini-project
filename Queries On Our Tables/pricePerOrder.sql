SELECT orderid, sum(price) AS totalPrice, dateOfOrderPlacement
FROM (SELECT priceperunit * amount AS price, orderid FROM product NATURAL JOIN productinorder) NATURAL JOIN orderTable
GROUP BY orderid, dateOfOrderPlacement;

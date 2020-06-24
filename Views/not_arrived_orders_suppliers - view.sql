CREATE OR REPLACE VIEW not_arrived_orders_suppliers AS
SELECT name, licenseNumber, orderid
FROM ordertable NATURAL JOIN supplier
WHERE orderid NOT IN(SELECT orderid
       FROM ordertable NATURAL JOIN receipt)
GROUP BY name, licenseNumber, orderid
ORDER BY licenseNumber, orderid;

CREATE OR REPLACE VIEW suppliers_with_amount AS
SELECT name, licenseNumber, COUNT(*) AS amountOfOrders
FROM supplier NATURAL JOIN ordertable
GROUP BY licenseNumber, name
ORDER BY licenseNumber;

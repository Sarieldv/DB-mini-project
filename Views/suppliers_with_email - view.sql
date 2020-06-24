CREATE OR REPLACE VIEW suppliers_with_email AS
SELECT name, licenseNumber, emailAddress
FROM supplier
WHERE emailAddress IS NOT NULL
GROUP BY licenseNumber, name, emailAddress
ORDER BY licenseNumber;

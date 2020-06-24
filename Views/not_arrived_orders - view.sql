CREATE OR REPLACE VIEW not_arrived_orders AS
SELECT orderid, dateoforderplacement, dateofplannedarrival, licensenumber
FROM ordertable
WHERE orderid NOT IN(SELECT orderid
       FROM ordertable NATURAL JOIN receipt)
GROUP BY orderid, dateoforderplacement, dateofplannedarrival, licensenumber
ORDER BY orderid;

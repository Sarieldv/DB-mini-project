select name as suppliername, licenseNumber, count(orderid) as numberOfOrders
from supplier natural join ordertable
group by name, licenseNumber;

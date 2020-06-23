select orderid,amount,priceperunit, barcode, name
from (select * from productinorder where amount > 10 and amount < 100) natural join ordertable natural join product;

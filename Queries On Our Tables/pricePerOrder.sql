select orderid, sum(price) as totalPrice
from (select priceperunit * amount as price, orderid from product natural join productinorder)
group by orderid;

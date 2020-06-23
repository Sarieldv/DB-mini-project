select supplierName, licensenumber, sum(totalprice)as totalyearlyprice
from(select dateofarrival, name as suppliername, licensenumber, totalprice
from(select orderid, sum(price) as totalPrice
from (select priceperunit * amount as price, orderid from product natural join productinorder)
group by orderid) natural join ordertable natural join supplier natural join receipt
where TO_DATE('2018/01/01 00:00:00', 'yyyy/mm/dd hh24:mi:ss') <= dateofarrival and
TO_DATE('2019/01/01 00:00:00', 'yyyy/mm/dd hh24:mi:ss') >= dateofarrival)
group by suppliername, licensenumber;

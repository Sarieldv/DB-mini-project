select p.name, barcode, count(id) as amountofstands
from (select distinct id, barcode from aslevi.supply) natural join product p
group by barcode, p.name
order by barcode;

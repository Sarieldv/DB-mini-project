select distinct name, barcode
from product natural join aslevi.supply
group by name, barcode
order by barcode;

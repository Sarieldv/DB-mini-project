select name, barcode, upToDate
from product natural join aslevi.supply
where TO_DATE('2018/01/01 00:00:00', 'yyyy/mm/dd hh24:mi:ss') <= upToDate and
TO_DATE('2019/01/01 00:00:00', 'yyyy/mm/dd hh24:mi:ss') >= upToDate
group by upToDate, barcode, name
order by upToDate, barcode;

select orderid, receiptid, dateofplannedarrival, dateoforderplacement, dateofarrival
from ordertable natural join receipt
where dateoforderplacement<=dateofarrival and dateofarrival<=dateofplannedarrival
group by orderid, receiptid, dateofplannedarrival, dateoforderplacement, dateofarrival 
order by dateofarrival;

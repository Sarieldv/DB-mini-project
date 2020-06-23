select distinct orderid, name as suppliername, licensenumber, dateofarrival, dateoforderplacement 
from receipt natural join ordertable natural join supplier;

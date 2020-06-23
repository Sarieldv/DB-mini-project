select distinct name as supplierName, licenseNumber
from supplier natural join receipt r natural join ordertable o 
where r.dateofarrival > o.dateofplannedarrival
group by name, licenseNumber
order by name;

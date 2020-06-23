select *
from product
where priceperunit>=all(select distinct priceperunit from product);

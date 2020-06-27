create or replace procedure priceFromYear(year in char, price out char) is
begin
  select sum(pricebyorder(orderid))
  into price
  from receipt natural join ordertable
  where dateofarrival >= TO_DATE(concat(year,'/01/01 00:00:00'), 'yyyy/mm/dd hh24:mi:ss');
end priceFromYear;
/

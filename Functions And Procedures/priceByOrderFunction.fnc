create or replace function priceByOrder(id1 in char) return number is
  FunctionResult number;
begin
  select sum(priceperunit * amount)
  into FunctionResult
  from productinorder NATURAL JOIN product
  where orderid = id1;
  return(FunctionResult);
end priceByOrder;
/

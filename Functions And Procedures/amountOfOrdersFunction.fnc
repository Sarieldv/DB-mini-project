create or replace function amountOfOrders(licenseNumber1 in char) return integer is
  FunctionResult integer;
begin
  select count(*)
  into FunctionResult
  from supplier Natural JOIN ordertable
  where licenseNumber = licenseNumber1;
  return(FunctionResult);
end amountOfOrders;
/

create or replace procedure addSupplier(supplierName in char, supplierLNum in char, phNum in char, email in char, addr in char, added out boolean) is
begin
    INSERT INTO supplier values (supplierName, supplierLNum, phNum, email, addr);
    added := TRUE;
   exception
     when others then dbms_output.put_line('ERROR: input was invalid or unique constraint violated');
     added := false;
end addSupplier;
/

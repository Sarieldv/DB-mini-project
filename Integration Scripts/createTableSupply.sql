CREATE TABLE Supply
(
  amount INT NOT NULL,
  ID NUMBER(10) NOT NULL,
  barcode CHAR(15) NOT NULL,
  upToDate DATE NOT NULL,
  PRIMARY KEY (ID, barcode, upToDate),
  FOREIGN KEY (ID) REFERENCES SALES_STAND(ID),
  FOREIGN KEY (barcode) REFERENCES SASEGAL.Product(barcode)
);
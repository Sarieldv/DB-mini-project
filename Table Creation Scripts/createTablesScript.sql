
CREATE TABLE Supplier
(
  name CHAR(50) NOT NULL,
  licenseNumber CHAR(10) NOT NULL,
  phoneNumber CHAR(10) NOT NULL,
  emailAddress CHAR(50),
  address CHAR(50) NOT NULL,
  PRIMARY KEY (licenseNumber)
);
CREATE TABLE OrderTable
(
  orderID CHAR(10) NOT NULL,
  dateOfOrderPlacement DATE NOT NULL,
  dateOfPlannedArrival DATE NOT NULL,
  licenseNumber CHAR(10) NOT NULL,
  PRIMARY KEY (orderID),
  FOREIGN KEY (licenseNumber) REFERENCES Supplier(licenseNumber)
);
CREATE TABLE Product
(
  barcode CHAR(15) NOT NULL,
  name CHAR(50) NOT NULL,
  pricePerUnit NUMERIC(12, 2) NOT NULL,
  PRIMARY KEY (barcode)
);
CREATE TABLE Receipt
(
  receiptID CHAR(10) NOT NULL,
  dateOfArrival DATE NOT NULL,
  orderID CHAR(10) NOT NULL,
  PRIMARY KEY (receiptID),
  FOREIGN KEY (orderID) REFERENCES OrderTable(orderID)
);
CREATE TABLE ProductInOrder
(
  amount INT NOT NULL,
  orderID CHAR(10) NOT NULL,
  barcode CHAR(15) NOT NULL,
  PRIMARY KEY (orderID, barcode),
  FOREIGN KEY (orderID) REFERENCES OrderTable(orderID),
  FOREIGN KEY (barcode) REFERENCES Product(barcode)
);

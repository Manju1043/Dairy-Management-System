CREATE TABLE PurchaseTable( 
Purchase_Id` INT NOT NULL,
Date` Date NOT NULL,
StaffId` INT NOT NULL,
SellerName` VARCHAR(30) NOT NULL,
Contact` VARCHAR(15) NOT NULL,
Address` VARCHAR (50) NOT NULL,
MilkType` VARCHAR (15) NOT NULL,
QTY` INT NOT NULL, 
Rate` DOUBLE NOT NULL,
TotalAmount` Double NOT NULL,
 PRIMARY KEY (`Purchase_Id`), FOREIGN KEY (StaffId) references 
StaffTable(StaffId),
 FOREIGN KEY (SellerName) references SellerTable(SellerName));
 
CREATE TABLE `SellerTable` (
 SellerName` VARCHAR(30) NOT NULL,
 CONTACT` VARCHAR (15) NOT NULL,
 Address` VARCHAR(200) NOT NULL,
 PRIMARY KEY (`SellerName`));
 
CREATE TABLE SalesTable( 
Sales_Id` INT NOT NULL, 
Date` Date NOT NULL,
StaffId` INT NOT NULL,
DealerName` VARCHAR(30) NOT NULL,
MilkType` VARCHAR (15) NOT NULL,
QTY INT NOT NULL, 
Rate DOUBLE NOT NULL,
TotalAmount Double NOT NULL,
 PRIMARY KEY (`Sales_Id`), FOREIGN KEY (StaffId) references StaffTable(StaffId));

CREATE TABLE StaffTable( 
 `StaffId` INT NOT NULL, 
 `Date` Date NOT NULL,
 `Name` VARCHAR(30) NOT NULL,
 `Gender` VARCHAR(30) NOT NULL,
 `CONTACT` VARCHAR (15) NOT NULL,
 `Address` VARCHAR(200) NOT NULL,
 PRIMARY KEY (`StaffId`));
 
CREATE TABLE TransactionTable( 
`Transaction_Id` INT NOT NULL, 
`Date` Date NOT NULL,
`StaffId` INT NOT NULL,
`Amount` Double NOT NULL,
`Type` VARCHAR(30) NOT NULL,
 PRIMARY KEY (`Transaction_Id`), FOREIGN KEY (StaffId) references 
StaffTable(StaffId));

CREATE TABLE InventoryTable( 
 `StaffId` INT NOT NULL, 
 `MilkType` VARCHAR (30) NOT NULL,
 `Qty` int NOT NULL,
 FOREIGN KEY (StaffId) references StaffTable(StaffId));

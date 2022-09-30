/*Creating Table*/   /*Insert Data into Table*/
/* \dt=> Dsiplay Tables Infromation Details  , \l=> Displays Details of Database*/         /* \d =access*/

/*Creating DataBase Name=> Project*/               
Creat Database Project;

/*Going to our database from postgres  => \connect project; */

/*Table 1 Start*/
CREATE table Employee( Emp_id varchar(10) PRIMARY KEY, role varchar(20), phone_no numeric(10),name varchar(20), salary numeric(10));


Insert into Employee (Emp_id,role,phone_no,name,salary) values ('E101','General','987654321','MaganBhai',100000);
Insert into Employee (Emp_id,role,phone_no,name,salary) values ('E102','General','987654322','ChhaganBhai',150000);
Insert into Employee (Emp_id,role,phone_no,name,salary) values ('E103','General','987654323','KathanBhai',100000);
Insert into Employee (Emp_id,role,phone_no,name,salary) values ('E104','Manager','987654324','SureshBhai',200000);
/*Table 1 Ends*/


/*Table 2 Start*/

CREATE TABLE Customer(CID varchar(10) PRIMARY KEY,c_address varchar(50), c_name varchar(20), ph_no numeric(10));


Insert into Customer (CID,c_address,c_name,ph_no) values ('C101','Vadodara','Heet',887654321);
Insert into Customer (CID,c_address,c_name,ph_no) values ('C102','Rajkot','Priyam',887654322);
Insert into Customer (CID,c_address,c_name,ph_no) values ('C103','Surat','Nisarg', 887654323);
Insert into Customer (CID,c_address,c_name,ph_no) values ('C104','Ahemdabad','Het',887654324);
/*Table 2 Ends*/


/*Table 3 Start*/

create table Orders(OID varchar(10) PRIMARY KEY,Item_name varchar(20), amount numeric(10));


Insert into Orders(OID, Item_name, amount)  values (1, 'Tv',50000);
Insert into Orders(OID, Item_name, amount)  values (2, 'Phone',15000);
Insert into Orders(OID, Item_name, amount)  values (3, 'Laptop',40000);
Insert into Orders(OID, Item_name, amount)  values (4, 'Tablet',10000);
/*Table 3 Ends*/



/*Table 4 Start*/

create table Billing( Bill_ID varchar(10) REFERENCES Orders(OID),Buyer_name varchar(30),mode_of_payment varchar(10),date_of_purchase Date);

Insert into Billing(Bill_ID,Buyer_name, mode_of_payment, date_of_purchase) values (1,'Heet','Online','1-02-22');
Insert into Billing(Bill_ID,Buyer_name, mode_of_payment, date_of_purchase) values (2,'Priyam','Online','1-04-22');
Insert into Billing(Bill_ID,Buyer_name, mode_of_payment, date_of_purchase) values (3,'Nisarg','Online','1-06-22');
Insert into Billing(Bill_ID,Buyer_name, mode_of_payment, date_of_purchase) values (4,'het','Online','1-08-22');
/*Table 4 Ends*/



/*Table 5 Start*/

create table Tv(Tv_id varchar(10) primary key,Tv_model varchar(30),Tv_company varchar(20),Tv_price numeric(10));

Insert into Tv (Tv_id, Tv_model, Tv_company, Tv_price)  values ('T1','B','MI',40000);
Insert into Tv (Tv_id, Tv_model, Tv_company, Tv_price)  values ('T2','B','SONY',100000);
Insert into Tv (Tv_id, Tv_model, Tv_company, Tv_price)  values ('T3','A','APPLE',200000);
Insert into Tv (Tv_id, Tv_model, Tv_company, Tv_price)  values ('T4','C','DELL',60000);
/*Table 4 Ends*/


/*Table 5 Start*/

create table Phone( Phone_id varchar(10) primary key, Phone_model varchar(30), Phone_company varchar(20), Phone_price numeric(10));

Insert into Phone (Phone_id, Phone_model,Phone_company,Phone_price) values (1,'101','Samsung',10000);
Insert into Phone (Phone_id, Phone_model,Phone_company,Phone_price) values (2,'102','Samsung',20000);
Insert into Phone (Phone_id, Phone_model,Phone_company,Phone_price) values (3,'201','Micromax',10000);
Insert into Phone (Phone_id, Phone_model,Phone_company,Phone_price) values (4,'202','Micromax',15000);
Insert into Phone (Phone_id, Phone_model,Phone_company,Phone_price) values (5,'301','Apple',100000);
Insert into Phone (Phone_id, Phone_model,Phone_company,Phone_price) values (6,'302','Apple',500000);
Insert into Phone (Phone_id, Phone_model,Phone_company,Phone_price) values (7,'401','MI',10000);
Insert into Phone (Phone_id, Phone_model,Phone_company,Phone_price) values (8,'402','MI',15000);
/*Table 5 Ends*/



/*Table 6 Start */

create table Laptop( Laptop_id varchar(10) primary key, Laptop_model varchar(30),Laptop_company varchar(20),Laptop_price numeric(10));

Insert into Laptop( Laptop_id, Laptop_model,Laptop_company ,Laptop_price) values (1,'A','Dell',50000);
Insert into Laptop( Laptop_id, Laptop_model,Laptop_company ,Laptop_price) values (3,'C','Dell',70000);
Insert into Laptop( Laptop_id, Laptop_model,Laptop_company ,Laptop_price) values (4,'A','HP',40000);
Insert into Laptop( Laptop_id, Laptop_model,Laptop_company ,Laptop_price) values (5,'A','Apple',200000);
/*Table 6 Ends*/



/*Table 7 Starts*/

create table Tablet(Tablet_id varchar(10) primary key,Tablet_model varchar(30),Tablet_company varchar(20),Tablet_price numeric(10));


Insert into Tablet(Tablet_id, Tablet_model, Tablet_company, Tablet_price) values (1,'A','Dell',10000);
Insert into Tablet(Tablet_id, Tablet_model, Tablet_company, Tablet_price) values (2,'B','Dell',15000);
Insert into Tablet(Tablet_id, Tablet_model, Tablet_company, Tablet_price) values (3,'A','Apple',80000);
Insert into Tablet(Tablet_id, Tablet_model, Tablet_company, Tablet_price) values (4,'B','Apple',60000);
/*Table 7 Ends*/


/*Table 8 Starts*/
/*No Meaning of creating this Table*/

create table Items(P_id varchar(10) REFERENCES Phone(Phone_id), L_id varchar(10) REFERENCES Laptop(Laptop_id), T_id varchar(10) REFERENCES Tablet(Tablet_id), Tv_id varchar(10) REFERENCES Tv(Tv_id) );

Insert into Items(T_id, L_id,T_id) values  ();
/*Table 8 Ends*/



/*Table 9 Starts*/

create table Supplier(S_id varchar(10) primary key,supplier_name varchar(30),supplier_address varchar(20), office_no numeric(10),product varchar(20));

Insert into  Supplier(S_id,Supplier_name,Supplier_address,office_no,product)   values (1020304050,'CompanyA','Rajkot',1010,'Phone');
Insert into  Supplier(S_id,Supplier_name,Supplier_address,office_no,product)   values (1020304051,'CompanyB','Porbandar',2010,'Laptop');
Insert into  Supplier(S_id,Supplier_name,Supplier_address,office_no,product)   values (1020304052,'CompanyC','Nadiad',4010,'Laptop');
Insert into  Supplier(S_id,Supplier_name,Supplier_address,office_no,product)   values (1020304053,'CompanyD','Surat',3010,'Tablet');
/*Table 9 Ends*/


/*Table 10 Starts*/

 Create table Purchase_order(Purchase_id varchar(10) primary key,S_id varchar(10) REFERENCES Supplier(S_id), pur_product varchar(20), quantity numeric(10), amount numeric(10));


Insert into Purchase_order(Purchase_id,S_id,pur_product,quantity,amount)   values ('P1',1020304050,'Phone',5,50000);
Insert into Purchase_order(Purchase_id,S_id,pur_product,quantity,amount)   values ('P2',1020304051,'Laptop',2,100000);
Insert into Purchase_order(Purchase_id,S_id,pur_product,quantity,amount)   values ('P3',1020304052,'Laptop',1,50000);
Insert into Purchase_order(Purchase_id,S_id,pur_product,quantity,amount)   values ('P4',1020304053,'Tablet',1,10000);
/*Table 10 Ends*/




/*Table 11 Starts*/
 
 Create table Payment( payment_id varchar(10)  PRIMARY KEY,mode_of_payment varchar(10), date DATE,amount numeric(10));


Insert into Payment(payment_id,mode_of_payment,date,amount) values (1,'Online','1-02-2022','50000');
Insert into Payment(payment_id,mode_of_payment,date,amount) values (2,'Online','1-04-2022','100000');
Insert into Payment(payment_id,mode_of_payment,date,amount) values (3,'Online','1-06-2022','50000');
Insert into Payment(payment_id,mode_of_payment,date,amount) values (4,'Online','1-08-2022','10000');
/*Table 11 Ends*/








/*Questions*/

1)Count Supplier_name who purchase amount>25000

=> Select count(*) as countSupplier FROM Supplier INNER JOIN Purchase_order ON Supplier.S_id =Purchase_order.S_id Where amount>25000;   

2)Display Total Sales of company in month of august 2022

=> Select count(*) as Sales from billing where subtract(month from date_of_purchase)='08' and subtract(year from date_of_purchase)='2022'; 
Select count(*) as Sales from billing where date_of_purchase='08/2022'; 

3)Display details of customers who purchase laptop in 2022

4)give the supplier detials who are supplying iphone and samsung

5) give the customer detials haing billing amount> 1lakh


\l => Showing Database




Drop table table_name;           //delete table
1234 & postgres


















/*
Insert into Computer (c_id,Company,model,Manf_Year) values ('1001','DELL','BOSTRO','1-01-2013');
Insert into Computer (c_id,Company,model,Manf_Year) values ('1002','DELL','PRECISION','1-01-2014');
Insert into Computer (c_id,Company,model,Manf_Year) values ('1003','HP','EDGE','1-01-2013');
Insert into Computer (c_id,Company,model,Manf_Year) values ('1004','HP','HORION','1-01-2014');
*/
/*
emp also class work
CREATE table Computer (c_id varchar(10) PRIMARY KEY,Company varchar(20),model varchar(20),Manf_Year Date);
*/

/*Postgres = 1234*/
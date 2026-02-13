--- Queries to create tables

--1st table
CREATE TABLE bronze.crm_cust_info (
    cst_id INT,
    cst_key NVARCHAR(50),
    cst_firstname NVARCHAR(50),
    cst_lastname NVARCHAR(50),
    cst_marital_status NVARCHAR(50),
    cst_gndr NVARCHAR(50),
    cst_create_date DATE
);

-- 2nd table
CREATE TABLE bronze.crm_prd_info (
    prd_id       INT,
    prd_key      NVARCHAR(50),
    prd_nm       NVARCHAR(50),
    prd_cost     INT,
    prd_line     NVARCHAR(50),
    prd_start_dt DATETIME,
    prd_end_dt   DATETIME
);

--3rd table
CREATE TABLE bronze.crm_sales_details (
    sls_ord_num  NVARCHAR(50),
    sls_prd_key  NVARCHAR(50),
    sls_cust_id  INT,
    sls_order_dt INT,
    sls_ship_dt  INT,
    sls_due_dt   INT,
    sls_sales    INT,
    sls_quantity INT,
    sls_price    INT
);

--4th table
CREATE TABLE bronze.erp_loc_a101 (
    cid    NVARCHAR(50),
    cntry  NVARCHAR(50)
);

--5th table
CREATE TABLE bronze.erp_cust_az12 (
    cid    NVARCHAR(50),
    bdate  DATE,
    gen    NVARCHAR(50)
);


--6th table
CREATE TABLE bronze.erp_px_cat_g1v2 (
    id           NVARCHAR(50),
    cat          NVARCHAR(50),
    subcat       NVARCHAR(50),
    maintenance  NVARCHAR(50)
);

--Queries to insert data

--1st table
bulk insert bronze.crm_cust_info
from 'C:\Users\aditya ram\Downloads\datasets\datasets\source_crm\cust_info.csv'
with
(
firstrow = 2,
fieldterminator = ',',
tablock
)

--2nd table
bulk insert bronze.crm_prd_info
from 'C:\Users\aditya ram\Downloads\datasets\datasets\source_crm\prd_info.csv'
with
(
firstrow = 2,
fieldterminator = ',',
tablock 
)


--3rd table
BULK INSERT bronze.crm_sales_details
from 'C:\Users\aditya ram\Downloads\datasets\datasets\source_crm\sales_details.csv'
with(
firstrow = 2,
fieldterminator = ',',
tablock
)

--4th table
BULK INSERT bronze.erp_loc_a101
from 'C:\Users\aditya ram\Downloads\datasets\datasets\source_erp\loc_a101.csv'
with(
firstrow = 2,
fieldterminator = ',',
tablock
)

--5th table
BULK INSERT bronze.erp_cust_az12
from 'C:\Users\aditya ram\Downloads\datasets\datasets\source_erp\cust_az12.csv'
with(
firstrow = 2,
fieldterminator = ',',
tablock
)

--6th table
BULK INSERT bronze.erp_px_cat_g1v2
from 'C:\Users\aditya ram\Downloads\datasets\datasets\source_erp\px_cat_g1v2.csv'
with(
firstrow = 2,
fieldterminator = ',',
tablock
)








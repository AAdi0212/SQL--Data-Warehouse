
--checking when cid isn't match with cst_key from crm_cust_info_table
SELECT *
FROM bronze.erp_cust_az12
WHERE cid NOT LIKE 'NAS%'

--Checking if any person's bdate is greater than today
SELECT DISTINCT bdate
FROM bronze.erp_cust_az12
WHERE bdate > GETDATE() or bdate <= '1926-02-06'

-- Quality check on gender column
select distinct
gen from bronze.erp_cust_az12;

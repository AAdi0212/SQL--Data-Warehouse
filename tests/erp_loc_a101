-- Quality check on country column

select distinct cntry
from bronze.erp_loc_a101


-- replacing '-' by empty in cid column
select *,
replace (cid,'-','') as cid
from bronze.erp_loc_a101

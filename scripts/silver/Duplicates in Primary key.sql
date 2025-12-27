

-- Check for Null or Duplicates in Primary key
-- Expectation: No Result

select 
cst_id,
COUNT(*) Duplicate
from bronze.crm_cust_info
GROUP BY cst_id
HAVING COUNT(*) > 1 or cst_id IS NULL
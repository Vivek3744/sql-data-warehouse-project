/*
===============================================================================
Load Bronze Layer (Source -> Bronze)
===============================================================================
Script Purpose:
    This is used to load the data into the 'bronze' schema from external CSV files. 
    It performs the following actions:
    - Truncates the bronze tables before loading data.
    - Uses the `COPY ` command to load data from csv Files to bronze tables.
===============================================================================
*/

-- Load the Records for bronze.crm_cust_info Table

TRUNCATE TABLE bronze.crm_cust_info ;
COPY  bronze.crm_cust_info (cst_id,cst_key,cst_firstname,cst_lastname,cst_marital_status,cst_gndr,cst_create_date)
FROM 'C:\Users\Vivek\OneDrive\Documents\Desktop\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
DELIMITER ','
CSV HEADER;

SELECT COUNT(*) FROM bronze.crm_cust_info ;


-- Load the Records for bronze.crm_prd_info Table

TRUNCATE TABLE bronze.crm_prd_info ;
COPY  bronze.crm_prd_info (prd_id,prd_key,prd_nm,prd_cost,prd_line,prd_start_dt,prd_end_dt)
FROM 'C:\Users\Vivek\OneDrive\Documents\Desktop\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
DELIMITER ','
CSV HEADER;

SELECT COUNT(*) FROM bronze.crm_prd_info ;


-- Load the Records for bronze.crm_sales_details Table

TRUNCATE TABLE bronze.crm_sales_details ;
COPY  bronze.crm_sales_details(sls_ord_num,sls_prd_key,sls_cust_id,sls_order_dt,sls_ship_dt,sls_due_dt,sls_sales,sls_quantity,sls_price
)
FROM 'C:\Users\Vivek\OneDrive\Documents\Desktop\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
DELIMITER ','
CSV HEADER;

SELECT COUNT(*) FROM bronze.crm_sales_details ;


-- Load the Records for bronze.erp_cust_az12  Table

TRUNCATE TABLE bronze.erp_cust_az12 ;
COPY  bronze.erp_cust_az12(cid,bdate,gen)
FROM 'C:\Users\Vivek\OneDrive\Documents\Desktop\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
DELIMITER ','
CSV HEADER;

SELECT COUNT(*) FROM bronze.erp_cust_az12  ;


-- Load the Records for bronze.erp_loc_a101  Table

TRUNCATE TABLE bronze.erp_loc_a101 ;
COPY  bronze.erp_loc_a101(cid,cntry)
FROM 'C:\Users\Vivek\OneDrive\Documents\Desktop\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
DELIMITER ','
CSV HEADER;

SELECT COUNT(*) FROM bronze.erp_loc_a101  ;


-- Load the Records for bronze.erp_px_cat_g1v2  Table

TRUNCATE TABLE bronze.erp_px_cat_g1v2 ;
COPY  bronze.erp_px_cat_g1v2(id,cat,subcat,maintenance)
FROM 'C:\Users\Vivek\OneDrive\Documents\Desktop\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
DELIMITER ','
CSV HEADER;

SELECT COUNT(*) FROM bronze.erp_px_cat_g1v2  ;

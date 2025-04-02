---------------------------------------------------------------------------------------------------------------------------
-- CREATE CALENDAR VIEW 
---------------------------------------------------------------------------------------------------------------------------
CREATE VIEW gold.calendar
AS
SELECT *
FROM
OPENROWSET(
    BULK 'https://awstordatalake.dfs.core.windows.net/silver/Calendar/',
    FORMAT = 'PARQUET'
) as q1
---------------------------------------------------------------------------------------------------------------------------
-- CREATE CUSTOMERS VIEW 
---------------------------------------------------------------------------------------------------------------------------
CREATE VIEW gold.customers
AS
SELECT *
FROM
OPENROWSET(
    BULK 'https://awstordatalake.dfs.core.windows.net/silver/Customers/',
    FORMAT = 'PARQUET'
) as q1
---------------------------------------------------------------------------------------------------------------------------
-- CREATE PRODUCT CATEGORIES VIEW 
---------------------------------------------------------------------------------------------------------------------------
CREATE VIEW gold.product_categories
AS
SELECT *
FROM
OPENROWSET(
    BULK 'https://awstordatalake.dfs.core.windows.net/silver/Product_Categories/',
    FORMAT = 'PARQUET'
) as q1
---------------------------------------------------------------------------------------------------------------------------
-- CREATE PRODUCT SUB CATEGORIES VIEW 
---------------------------------------------------------------------------------------------------------------------------
CREATE VIEW gold.product_subcategories
AS
SELECT *
FROM
OPENROWSET(
    BULK 'https://awstordatalake.dfs.core.windows.net/silver/Product_SubCategories/',
    FORMAT = 'PARQUET'
) as q1
---------------------------------------------------------------------------------------------------------------------------
-- CREATE PRODUCTS VIEW 
---------------------------------------------------------------------------------------------------------------------------
CREATE VIEW gold.products
AS
SELECT *
FROM
OPENROWSET(
    BULK 'https://awstordatalake.dfs.core.windows.net/silver/Products/',
    FORMAT = 'PARQUET'
) as q1
---------------------------------------------------------------------------------------------------------------------------
-- CREATE RETURNS VIEW 
---------------------------------------------------------------------------------------------------------------------------
CREATE VIEW gold.returnss
AS
SELECT *
FROM
OPENROWSET(
    BULK 'https://awstordatalake.dfs.core.windows.net/silver/Returns/',
    FORMAT = 'PARQUET'
) as q1
---------------------------------------------------------------------------------------------------------------------------
-- CREATE SALES VIEW 
---------------------------------------------------------------------------------------------------------------------------
CREATE VIEW gold.sales
AS
SELECT *
FROM
OPENROWSET(
    BULK 'https://awstordatalake.dfs.core.windows.net/silver/Sales/',
    FORMAT = 'PARQUET'
) as q1
---------------------------------------------------------------------------------------------------------------------------
-- CREATE TERRITORIES VIEW 
---------------------------------------------------------------------------------------------------------------------------
CREATE VIEW gold.territories
AS
SELECT *
FROM
OPENROWSET(
    BULK 'https://awstordatalake.dfs.core.windows.net/silver/Territories/',
    FORMAT = 'PARQUET'
) as q1
---------------------------------------------------------------------------------------------------------------------------
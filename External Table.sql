CREATE DATABASE SCOPED CREDENTIAL cred_proj
WITH
    IDENTITY = 'Managed Identity'

CREATE EXTERNAL DATA SOURCE silver_source
WITH (
    LOCATION = 'https://awstordatalake.blob.core.windows.net/silver',
    CREDENTIAL = cred_proj
)

CREATE EXTERNAL DATA SOURCE source_gold
WITH (
    LOCATION = 'https://awstordatalake.blob.core.windows.net/gold',
    CREDENTIAL = cred_proj
)

CREATE EXTERNAL FILE FORMAT format_parquet
WITH (
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)

-----------------------------------------------------------------------------------------------------------------------------
-- CREATE EXTERNAL TABLE SALES
-----------------------------------------------------------------------------------------------------------------------------
CREATE EXTERNAL TABLE gold.extsales
WITH (
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
) AS SELECT * FROM gold.sales

SELECT * FROM gold.extsales
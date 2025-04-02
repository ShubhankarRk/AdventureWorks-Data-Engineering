# AdventureWorks End-to-End Azure Data Engineering Pipeline

This project showcases an end-to-end data engineering pipeline using modern Azure tools to transform raw GitHub-hosted AdventureWorks CSVs into clean, analytics-ready datasets.

---

## Problem

Sales and product data was scattered across flat CSV files with no transformation logic or integrated structure.

---

## Solution

Used Azure-native tools to ingest, transform, and model the data using the **medallion architecture** — Bronze (raw), Silver (cleaned), Gold (aggregated/analytics-ready).

---

## Medallion Architecture Layers

| Layer   | Description |
|---------|-------------|
| **Bronze** | Raw GitHub CSVs loaded into ADLS via ADF |
| **Silver** | Cleaned & transformed data via Databricks |
| **Gold** | Aggregated views & business models in Synapse |

---

## Tools & Technologies

- **Azure Data Factory (ADF)** – for ingestion pipelines from GitHub
- **Azure Data Lake Storage Gen2** – for scalable storage
- **Azure Databricks (PySpark)** – for distributed data processing and transformation
- **Azure Synapse Analytics** – for querying and analyzing Gold layer via external tables
- **Managed Identity** – for secure access across services

---

## Pipeline Steps

1. **Extract**: GitHub → ADF → ADLS (Bronze)
2. **Transform**: Databricks → Bronze to Silver
3. **Load**: Silver to Synapse External Tables (Gold)
4. **Analyze**: Ready for BI tools or ad-hoc SQL analysis

---

## Outcome

The data pipeline reduced manual overhead, improved query speed and enabled centralized, secure analytics-ready data views across three years of sales data.

---

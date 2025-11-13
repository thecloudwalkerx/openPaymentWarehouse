# CMS Open Payments Dataset 2025: Cleaned for Analysis ⚕️

This repository provides a cleaned, processed, and analysis-ready version of the Centers for Medicare & Medicaid Services (CMS) Open Payments data for the year 2025.

The CMS Open Payments program is a U.S. federal initiative designed to bring transparency to the financial relationships between pharmaceutical/device manufacturers and healthcare providers (physicians, non-physician practitioners, and teaching hospitals). The raw data is comprehensive but complex; this project simplifies it into a dense, user-friendly format ideal for exploration, visualization, and predictive modeling.

## Project Overview

This dataset contains over 15.4 million payment records across the United States for the period 01/01/2024 to 12/31/2024. The goal is to provide a structured, analysis-ready dataset for:

- Exploratory Data Analysis (EDA)  
- Predictive Modeling (Regression or Classification)  
- Conflict of Interest Research  
- Trend Analysis across specialties, manufacturers, and geographies  

## ETL & Data Processing Pipeline

The data was processed using a detailed Extract, Transform, Load (ETL) pipeline with Pentaho Data Integration (PDI). The processing focused on data quality, usability, and analytical readiness.

Key Processing Steps:

- **Feature Selection:** Removed low-variance, sparse, and redundant columns.  
- **Data Simplification:** Retained only the primary product or specialty for multi-entry records.  
- **Address Consolidation:** Combined multi-line addresses into a single `address_full` column.  
- **Date Parsing:** Split dates into dedicated `_day`, `_month`, `_year` columns for both payment and publication dates.  
- **Schema Design:** Structured to integrate with a Star Schema for data warehouse use, with dimensions for Recipient, Manufacturer, Location, and Time.

## Dataset Files

| File Name               | Size       | Description |
|-------------------------|-----------|-------------|
| merged_open_payment.csv  | 12.03 GB  | Complete dataset (15.4M+ records) for comprehensive analysis and custom splits. |
| train_dataset.csv        | -         | Subset prepared for training machine learning models. |
| test_dataset.csv         | -         | Holdout set for unbiased model evaluation. |

**Download the dataset:** [Kaggle Link](https://www.kaggle.com/datasets/albedox/cms-open-payment-dataset-2025)

## Documentation & Screenshots

| File / Screenshot | Description | Link |
|------------------|-------------|------|
| Dimension Process | ETL dimension process visualization | [View](https://github.com/thecloudwalkerx/openPaymentWarehouse/blob/main/Documentations%20and%20Screenshot/Dimension%20Process.png) |
| Fact Process | ETL fact process visualization | [View](https://github.com/thecloudwalkerx/openPaymentWarehouse/blob/main/Documentations%20and%20Screenshot/Fact%20Process.png) |
| Datawarehouse ERD | Entity-Relationship Diagram for data warehouse | [View](https://github.com/thecloudwalkerx/openPaymentWarehouse/blob/main/Documentations%20and%20Screenshot/Datawarehouse%20ERD.png) |
| EDA Documentation | Exploratory Data Analysis documentation | [Download](https://github.com/thecloudwalkerx/openPaymentWarehouse/blob/main/Documentations%20and%20Screenshot/EDA%20Documentation.docx) |

## Data Dictionary (34 Columns)

- `payment_id` : Unique identifier for each payment transaction  
- `payment_amount` : Total payment value in USD  
- `payment_number` : Number of individual payments included  
- `address_full` : Full primary business street address  
- `address_country` : Recipient’s primary country  
- `address_state` : Recipient’s primary state (2-letter abbreviation)  
- `address_city` : Recipient’s city  
- `zip_code` : 5 or 9-digit ZIP code  
- `payment_day/month/year` : Date of payment  
- `publication_day/month/year` : Date of publication  
- `change_type` : NEW or ADD  
- `indicator_third_party` : ENTITY, INDIVIDUAL, NO THIRD PARTY PAYMENT  
- `indicator_related_product` : YES or NO  
- `indicator_covered` : COVERED, NON-COVERED, UNKNOWN  
- `identity_type` : Recipient professional designation  
- `first_name` / `last_name` : Recipient names  
- `manufacturer_name` : Paying company  
- `manufacturer_state` / `manufacturer_country` : Company location  
- `payment_form` : Method of payment (CASH, STOCK, ITEMS OR SERVICES)  
- `payment_nature` : Reason for payment (GIFT, TRAVEL, CONSULTING FEE, etc.)  
- `product_type` : Category of product (DRUG, DEVICE, BIOLOGICAL, etc.)  
- `therapeutic_area` : Product therapeutic area  
- `product_name` : Marketed name of product  
- `primary_type` : Primary medicine type of recipient  
- `specialty_group` : Broad medical specialty  
- `subspecialty` : Specific specialty  
- `license_code` : State license code  

## License

This dataset is published under the **CC0: Public Domain license**.  

## Acknowledgements

This dataset is a cleaned and simplified derivative of the official CMS Open Payments Data. Original data is in the public domain. For more details, visit [CMS Open Payments Data](https://openpaymentsdata.cms.gov/dataset/e6b17c6a-2534-4207-a4a1-6746a14911ff).

**Author:** Asaduzzaman

## Usage & Contribution

**Data Use Cases:**  
- Exploratory Data Analysis to identify trends in payment types, top-receiving specialties, or geographic patterns  
- Predictive Modeling using the train/test subsets  
- Researching financial ties between drug/device categories and providers  

**Contributing:**  
Feel free to open an issue or pull request for suggestions on further cleaning, feature engineering, or dataset improvements. Cite the CMS Open Payments program when using the data.

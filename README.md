# Data Engineering Project

This repository contains a set of data engineering tasks implemented using Azure Data Factory(ADF), SQL Server and Azure Data Lake Storage(ADLS). The objective is to create pipelines that can process data based on threshold conditions, handle time-based data operations and partitioning, and perform data transformation and integration.

---

## Technologies Used

- Azure Data Factory
- Azure SQL Database / SQL Server
- Azure Data Lake Storage Gen2
- CSV, JSON, Parquet
- SQL, Parameterized Queries

---

## Project Structure

```graphql
PROJECT/
│
├── Statement1/
│   └── stmt1.pdf
├── Statement2/
│   └── stmt2.pdf
├── Statement3/
│   ├── insertProduct.sql
│   ├── queries.sql
│   └── stmt3.pdf
├── Statement4/
│   ├── customerAddress.csv
│   ├── query.sql
│   └── stmt4.pdf
├── threshold/
│   └── threshold.json
├── customerTable.sql
├── insertCustomers.sql
└── stmts.pdf
```

---

## Statement Folders – Documentation & Snapshots

__stmts.pdf:__ PDF contains the list of tasks performed as a part of the project.

Each Statement folder includes a step-by-step PDF guide which describe:
- Detailed task breakdown with pipeline configurations, parameter usage and settings.
- Snapshots of:
    - Azure Data Factory pipeline design
    - Trigger execution
    - Output verification in ADLS or Azure SQL
    - Debugging or validation steps

---

## Project Requirements & Solutions

### Task 1: Threshold-Based Conditional Data Load

#### __Objective__
Load a threshold value from a JSON file stored in ADLS.
Compare this threshold against the row count in the Customer table.
If the count exceeds the threshold, export the data to ADLS in JSON format.

#### __Implementation__
- __Threshold file:__ threshold/threshold.json
- __SQL query:__ customerTable.sql, insertCustomers.sql
- __ADF pipeline:__ Checks row count, conditionally performs copy operation.

### Task 2: Time-Partitioned Output

#### __Objective__
Avoid overwriting by writing customer data to a path like:
Customer/\<Year>/\<Month>/\<Day>/

#### __Implementation__
ADF pipeline uses __pipeline variables__ for dynamic folder creation, that, ensures each pipeline run writes to a new folder.

### Task 3: Pipeline Using Foreach_Example2

#### __Objective__
Copy data from:
- Product table where productId > 100
- Customer table where 100 < customerId < 1000

#### __Implementation__
- __One pipeline__ (Foreach_Example2) with Foreach loop.
- __Single Copy Activity__ using parameterized queries.
- __SQL query reference:__ Statement3/queries.sql, Statement3/insertProduct.sql

### Task 4: Join CSV and SQL Table

#### __Objective__
Read Customer data from SQL and CustomerAddress from CSV. <br>
Join on customerId, filter 1000 < customerId < 2000. <br>
Save result as a Parquet file, sorted in ascending order.

#### __Implementation__
##### Inputs:
- __SQL Table__ from customerTable.sql
- __CSV file:__ Statement4/customerAddress.csv
##### Output:
- Partitioned Parquet file.
##### Query logic in Statement4/query.sql

---

## Learning Outcomes
- Conditional execution in ADF pipelines
- File-driven configurations
- Dynamic folder creation using timestamps
- Joining structured & semi-structured data
- Exporting data in optimized storage formats(JSON, Parquet)
- Conditional pipeline logic and data transfer operations using thresholding.
- 
---

## Acknowledgments
I would like to sincerely thank __Celebal Technologies__ for providing me the opportunity to be a part of Celebal Summer Internship Program, 2025.

The mentorship, guidance and well structured sessions have greatly contributed towards my career and professional growth.

Workshops and exposure to industry level tools and frameworks like:
- SQL for working with relational data
- Python and PySpark for data processing and transformation
- Pandas for data manipulation
- Azure Data Factory(ADF) for building and managing pipelines
- Azure Data Lake Storage(ADLS) for handling cloud storage

have helped me in understanding the core engineering concepts and best practices used in Data Engineering field.

In addition to technical training, I am also grateful for the personalised training sessions focused on resume preparation, career guidance, which were instrumental in helping my plan my next steps

---

## Author
This project was completed as part of a __Data Engineering Insternship__. <br>
By: __Kartikey Goel__

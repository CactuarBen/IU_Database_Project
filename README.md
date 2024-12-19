# IU Database Project

![ERDiagram](https://github.com/user-attachments/assets/7b5b26c1-c9d5-4749-a35c-445863ebe701)


## Build a Data Mart in SQL

### Installation Guide

#### 1. Download and Install MySQL Workbench
Download MySQL Workbench from the official website: [Download MySQL Workbench](https://dev.mysql.com/downloads/workbench/).

#### 2. Set Up MySQL Workbench
Open MySQL Workbench.
Create a new connection:
- Click the panel with a "+" sign to create a new connection.
- Set up the connection as local.
- Fill in the following details: Hostname, Username, Password
- Name the connection (e.g., *"Airbnb database"*).
- Before submitting the data, verify the connection using "Test connection".
- Enter the connection and find the box in the top left corner with schemas.
- Create a new schema and name it (e.g., *"iu_database_project"*).

#### 3. Clone the Project Repository
Navigate to the GitHub repository: [IU Database Project](https://github.com/CactuarBen/IU_Database_Project).
Clone the repository:
- Open your terminal (or CMD) and navigate to the desired folder.
- Run the following command:
     ```
     git clone https://github.com/CactuarBen/IU_Database_Project.git
     ```
- Locate the schema file:
- Open the folder `Phase 3 - Finalisation`.
- Find the file `airbnb_project_schema.sql`.

#### 4. Import the Schema into MySQL
- Open MySQL Workbench and navigate to: Server > Data Import.
- Select "Import from the Self-Contained file".
- Provide the path to the file you downloaded (e.g., `airbnb_project_schema.sql`).
- Set Default Target Schema to the schema name you created in Step 2.
- From the dropdown, choose "Dump Structure".
- Click "Start Import".
- Refresh the Schemas tab (left panel) to view the imported tables.

#### 5. Insert Data into the Table
- In the project repository, navigate to `Phase 3 - Finalisation`.
- Find the file `airbnb_project_insert_data.sql`.
- Open MySQL Workbench.
- Click the SQL button with a "+" sign to create a new SQL query file.
- Copy and paste the contents of `airbnb_project_insert_data.sql` into the new SQL file.
- Execute the script to populate the tables.

---
**Repository Link**: [IU Database Project on GitHub](https://github.com/CactuarBen/IU_Database_Project)

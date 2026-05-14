📌 Project Overview
This project focuses on analyzing the DataCo Smart Supply Chain dataset to identify operational inefficiencies. By processing over 180,000 rows of data, I explored the relationship between shipping promises, actual delivery times, and overall company profit.

🛠️ Technologies Used
Data Processing: Python (Pandas)

Database Management: PostgreSQL

Database Connection: SQLAlchemy & Dotenv (for security)

Visualization: Power BI

Version Control: Git & GitHub

⚙️ Project Workflow
1. Data Cleaning & Transformation
The raw data was processed using Python to handle missing values and correct data types.

Security: Used a .env file to store database credentials and a .gitignore file to ensure sensitive information was never uploaded to GitHub.

2. Database Integration
The cleaned data was migrated into a PostgreSQL database. This allowed for complex querying and better data management compared to working with a raw CSV file.

3. SQL Analysis
Using SQL, I calculated key performance indicators (KPIs) such as:

Average Delay: The difference between scheduled shipping days and actual shipping days.

Late Delivery Risk: The percentage of orders failing to meet deadlines.

Profit Impact: How late deliveries correlate with reduced order profit.

4. Power BI Dashboarding
The final step was building an interactive dashboard to visualize the findings. The dashboard allows users to filter data by Market, Category, and Shipping Mode to find specific bottlenecks.

📊 Key Findings
The "First Class" Problem: While the company promises 1-day delivery for First Class shipping, the data shows an average actual time of 3.61 days. This results in a significant average delay of 2.61 days.

Ineffective Premium Tiers: "First Class" and "Standard Class" shipping actually take almost the same amount of time to arrive, meaning customers are paying more for a service that isn't faster.

Profit Correlation: Late deliveries are directly tied to lower profit margins, likely due to customer refunds or increased operational costs.

🚀 How to Use This Project
Clone the Repo: Download the code to your local machine.

Environment Setup: Create a .env file with your PostgreSQL credentials (Username, Password, Port).

Run the Notebook: Execute the Jupyter Notebook to clean the data and push it to your SQL database.

View Dashboard: Open the .pbix file in Power BI Desktop to interact with the visualizations.

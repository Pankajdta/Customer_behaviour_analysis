Project Overview::-
This project analyzes a dataset of 3,900+ retail transactions to uncover hidden patterns in customer spending, demographic preferences, and subscription behavior. By leveraging the Python-SQL-Power BI stack, I identified key high-value segments and provided data-driven recommendations to bridge a 73% subscription gap.

🚀 Business Problem::-
The business was operating without a clear understanding of its customer segments, leading to inefficient marketing spend. Specifically:

Retention Issue: 73% of customers were non-subscribers (one-time shoppers).

Demographic Blindspot: Lack of clarity on which age groups contributed most to the total revenue of $233k.

Product-Rating Mismatch: High-volume categories (Clothing) weren't necessarily the highest-rated (Accessories).

🛠️ Tech Stack
Python: Data Cleaning (Handling missing values), Data Binning (Age Grouping), and EDA.

MySQL: Advanced querying to audit behavioral patterns and revenue contribution.

Power BI: Interactive dashboarding with complex DAX measures and cross-filtering.

Excel: Initial data inspection and documentation.

🔍 Data Pipeline & Analysis
1. Python (Data Preparation)
Cleaned 3,900 records, handling 37 missing review ratings.

Engineered a new feature: Age Grouping (Young Adult, Adult, Middle-Aged, Senior) to enable demographic-specific insights.

2. SQL (Database Auditing)
Transferred cleaned data from VS Code to MySQL using SQLAlchemy.

Identified the 'Middle-Aged' segment as the primary revenue driver, contributing $62,143.

Validated that while Clothing has the highest sales volume, Accessories hold the highest customer satisfaction scores.

3. Power BI (Visualization)
Built a comprehensive dashboard featuring:

KPI Cards: Average Purchase Amount ($59.76), Total Customers (3.9k).

Subscription Analysis: A breakdown of the 27% subscriber vs 73% non-subscriber base.

Revenue Heatmaps: Sales performance across categories and seasons.

💡 Strategic Recommendations
Subscription Growth: Launch a targeted loyalty program for the 'Middle-Aged' segment to convert high-value one-time shoppers into recurring subscribers.

Inventory Alignment: Increase stock for the Accessories category during peak seasons to capitalize on high review ratings.

Marketing Shift: Reallocate 15% of the marketing budget from low-performing demographics to 'Young Adults' and 'Middle-Aged' groups to maximize ROI.

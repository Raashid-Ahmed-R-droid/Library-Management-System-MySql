
# Library Management & Analytics System (MySQL-Only Project)

## Overview
This project is a complete, SQL-only system for managing a library. It features:
- Complete schema for Members, Books, Borrowings, and Fines
- Sample data for immediate testing
- Views for reusable analytics
- Stored procedures for borrowing/returning books
- Triggers for data integrity and automatic fine calculation
- Analytics SQL queries for business insights

##SAMPLE OUTPUTS:

1)Viewing the different Databases : 

<img width="596" height="442" alt="Screenshot 2025-08-27 230920" src="https://github.com/user-attachments/assets/c0e61ccb-9502-49f7-8f96-f9f977877a70" />

2)Making changes to database, then Selecting the Overdue_books table:

<img width="1007" height="465" alt="Screenshot 2025-08-27 231414" src="https://github.com/user-attachments/assets/da5b0ac9-ec23-4509-b661-c9baad554aaf" />

3) Example of Analytics/reporting few Important_Queries for understanding : 
   
<img width="1060" height="175" alt="Screenshot 2025-08-27 232411" src="https://github.com/user-attachments/assets/6e25f790-74fb-4e6b-8784-c4872db2856e" />


## Folder Contents

| File                        | Purpose                                        |
|-----------------------------|------------------------------------------------|
| 1_schema.sql                | Database schema                                |
| 2_sample_data.sql           | Sample data inserts                            |
| 3_views.sql                 | Analytics & reporting views                    |
| 4_stored_procedures.sql     | Stored procedures for borrowing/returning      |
| 5_triggers.sql              | Triggers for fines and integrity               |
| 6_IMP_Queries.sql           | Example analytics/Important queries            |

## How To Use

1. **Run schema:**  
   `mysql -u root -p < 1_schema.sql`
2. **Insert sample data:**  
   `mysql -u root -p < 2_sample_data.sql`
3. **Create views:**  
   `mysql -u root -p < 3_views.sql`
4. **Create stored procedures:**  
   `mysql -u root -p < 4_stored_procedures.sql`
5. **Create triggers:**  
   `mysql -u root -p < 5_triggers.sql`
6. **Run analytics queries:**  
   `mysql -u root -p < 6_analytics_queries.sql`  
   *(or copy queries into your SQL client)*

## Author
By Raashid Ahmed (github.com/Raashid-Ahmed-R-droid)

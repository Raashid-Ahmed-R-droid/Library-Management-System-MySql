# Library Management & Analytics System (MySQL-Only Project)

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


   
## Folder Contents

| File                        | Purpose                                        |
|-----------------------------|------------------------------------------------|
| 1_schema.sql                | Database schema                                |
| 2_sample_data.sql           | Sample data inserts                            |
| 3_views.sql                 | Analytics & reporting views                    |
| 4_stored_procedures.sql     | Stored procedures for borrowing/returning      |
| 5_triggers.sql              | Triggers for fines and integrity               |
| 6_analytics_queries.sql     | Example analytics/reporting queries            |



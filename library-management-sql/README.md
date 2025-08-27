# Library Management & Analytics System (MySQL-Only Project)

## Overview
This project is a complete, SQL-only system for managing a library. It features:
- Complete schema for Members, Books, Borrowings, and Fines
- Sample data for immediate testing
- Views for reusable analytics
- Stored procedures for borrowing/returning books
- Triggers for data integrity and automatic fine calculation
- Analytics SQL queries for business insights

## Folder Contents

| File                        | Purpose                                        |
|-----------------------------|------------------------------------------------|
| 1_schema.sql                | Database schema                                |
| 2_sample_data.sql           | Sample data inserts                            |
| 3_views.sql                 | Analytics & reporting views                    |
| 4_stored_procedures.sql     | Stored procedures for borrowing/returning      |
| 5_triggers.sql              | Triggers for fines and integrity               |
| 6_analytics_queries.sql     | Example analytics/reporting queries            |

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

## Analytics Examples
- **Top borrowed books**
- **Most active members**
- **Current overdue books**
- **Members with unpaid fines**
- **Books with zero available copies**

---

### Extra: How to Borrow and Return Books

**Borrow a Book:**  
```sql
CALL borrow_book(1, 2, '2024-08-26', '2024-09-09');
```

**Return a Book:**  
```sql
CALL return_book(2, '2024-09-10');
```

---

## Author
Prepared for Mu Sigma interview by Raashid Ahmed (github.com/Raashid-Ahmed-R-droid)

# 📚 Exam Summary - MIS 443 (2025 - 2026)[cite: 1]

**Course:** MIS 443 - Business Data Management[cite: 1]  
**Institution:** Becamex Business School[cite: 1]  
**Duration:** 90 minutes | **Database:** PostgreSQL | **Exam Type:** Open Book[cite: 1]  

---

## 🗄️ 1. Database Overview: "Customer Insights"

The database represents an international retailer selling products through retail and online channels[cite: 1]. It consists of 6 tables:

- **`customers`**: Customer demographics and profile data (`customer_id`, `age`, `first_purchase`, `rewards_membership`, `email_permission`)[cite: 1].
- **`orders`**: Order details (`order_id`, `date_shop`, `customer_id`, `sales_channel`, `country_id`)[cite: 1].
- **`country`**: Country location and head office (`country_id`, `country_name`, `head_office_location`)[cite: 1].
- **`products`**: Product details and pricing (`product_id`, `category`, `unit_price`)[cite: 1].
- **`baskets`**: Line-item details of products per order (`order_id`, `product_id`, `quantity`)[cite: 1].
- **`students`**: Student identification record for the exam (`student_id`, `full_name`, `email`)[cite: 1].

### Key Relationships (ERD)
- **Customers ➔ Orders**: One-to-Many[cite: 1]
- **Country ➔ Orders**: One-to-Many[cite: 1]
- **Orders ⬌ Products**: Many-to-Many via `baskets`[cite: 1]

---

## 📝 2. Summary of Questions & Requirements

| Question | Marks | Summary of SQL Requirements |
| :--- | :---: | :--- |
| **Question 1(a)** | 5 | Create a PostgreSQL database using your full name in lowercase (no spaces or diacritics)[cite: 1]. Execute `MIS443_Customer_Insights_PostgreSQL.sql`[cite: 1]. |
| **Question 1(b)** | 5 | Create table `public.students` (`student_id`, `full_name`, `email`)[cite: 1]. Insert your actual information and display the inserted record[cite: 1]. |
| **Question 2** | 10 | Calculate the average age (`average_age`, rounded to 2 decimal places) of customers who permit marketing emails (`email_permission = TRUE`)[cite: 1]. |
| **Question 3(a)** | 10 | Count total orders (`total_orders`) per sales channel (`sales_channel`), sorted from highest to lowest[cite: 1]. |
| **Question 3(b)** | 10 | Identify repeat customers (`total_orders > 1`)[cite: 1]. Display `customer_id`, `age`, and `total_orders`[cite: 1]. Sort by `total_orders` descending, then `customer_id` ascending[cite: 1]. |
| **Question 4(a)** | 10 | Generate an order monitoring report showing `order_id`, `date_shop`, `sales_channel`, `customer_age`, and `country_name`[cite: 1]. Sort by newest order date, then `order_id`[cite: 1]. |
| **Question 4(b)** | 10 | Calculate total orders per country (including countries with no orders)[cite: 1]. Display `country_name` and `total_orders`[cite: 1]. Sort by `total_orders` descending, then `country_name` alphabetically[cite: 1]. |
| **Question 5(a)** | 10 | Calculate `total_quantity` and `total_revenue` for each product category[cite: 1]. Round revenue to 2 decimal places and sort from highest to lowest[cite: 1]. |
| **Question 5(b)** | 10 | Calculate total order value and return orders worth more than 20.00 (`total_order_value`, rounded to 2 decimal places)[cite: 1]. Sort from highest to lowest[cite: 1]. |
| **Question 6(a)** | 10 | Display `customer_id`, `age`, and latest order date (`latest_order_date`) for marketing-eligible customers (include customers with no orders)[cite: 1]. |
| **Question 6(b)** | 5 | Rank all customers by order count using `DENSE_RANK()` without gaps (include customers with no orders; do not use CTE)[cite: 1]. |
| **Question 6(c)** | 5 | Use a CTE to calculate each order's total value, then summarize channel performance: `sales_channel`, `total_orders`, `total_revenue`, `average_order_value`[cite: 1]. |

---

## 📦 3. Submission Guidelines

Submit a single compressed archive (`.zip`) containing:
1. `script.sql` (All SQL queries)[cite: 1]
2. `report.docx` (Detailed report with query outputs)[cite: 1]

**File Naming Format:** `MIS443_ID_FullName.zip` (e.g., `MIS443_2005000001_JohnDoe.zip`)[cite: 1]

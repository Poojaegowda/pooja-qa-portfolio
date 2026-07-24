-- ============================================================
-- SQL & DATABASE TESTING PRACTICE
-- QA Engineering Portfolio - Pooja E
-- ============================================================

-- This file contains beginner-friendly SQL queries
-- for SQL learning and Database Testing practice.

-- ============================================================
-- 1. VIEW ALL RECORDS
-- ============================================================

-- View all customers
SELECT *
FROM customers;

-- View all transactions
SELECT *
FROM transactions;

-- View all AML alerts
SELECT *
FROM aml_alerts;


-- ============================================================
-- 2. SELECT SPECIFIC COLUMNS
-- ============================================================

-- Display selected customer details
SELECT customer_id, customer_name, risk_category
FROM customers;

-- Display selected transaction details
SELECT transaction_id, customer_id, amount, transaction_status
FROM transactions;


-- ============================================================
-- 3. WHERE CLAUSE
-- ============================================================

-- Find a specific customer
SELECT *
FROM customers
WHERE customer_id = 1001;

-- Find high-risk customers
SELECT *
FROM customers
WHERE risk_category = 'HIGH';

-- Find successful transactions
SELECT *
FROM transactions
WHERE transaction_status = 'SUCCESS';


-- ============================================================
-- 4. COMPARISON OPERATORS
-- ============================================================

-- Transactions greater than 100000
SELECT *
FROM transactions
WHERE amount > 100000;

-- Transactions less than 50000
SELECT *
FROM transactions
WHERE amount < 50000;

-- Transactions equal to 100000
SELECT *
FROM transactions
WHERE amount = 100000;

-- Transactions greater than or equal to 100000
SELECT *
FROM transactions
WHERE amount >= 100000;


-- ============================================================
-- 5. AND, OR, NOT OPERATORS
-- ============================================================

-- High-risk customers from Bengaluru
SELECT *
FROM customers
WHERE risk_category = 'HIGH'
AND city = 'Bengaluru';

-- Customers from Bengaluru or Mumbai
SELECT *
FROM customers
WHERE city = 'Bengaluru'
OR city = 'Mumbai';

-- Customers who are not high risk
SELECT *
FROM customers
WHERE NOT risk_category = 'HIGH';


-- ============================================================
-- 6. BETWEEN OPERATOR
-- ============================================================

-- Find transactions between 50000 and 100000
SELECT *
FROM transactions
WHERE amount BETWEEN 50000 AND 100000;


-- ============================================================
-- 7. IN OPERATOR
-- ============================================================

-- Find customers from selected cities
SELECT *
FROM customers
WHERE city IN ('Bengaluru', 'Mumbai', 'Delhi');

-- Find transactions with selected statuses
SELECT *
FROM transactions
WHERE transaction_status IN ('SUCCESS', 'PENDING');


-- ============================================================
-- 8. LIKE OPERATOR
-- ============================================================

-- Customer names starting with 'A'
SELECT *
FROM customers
WHERE customer_name LIKE 'A%';

-- Customer names ending with 'a'
SELECT *
FROM customers
WHERE customer_name LIKE '%a%';

-- Customer names containing 'an'
SELECT *
FROM customers
WHERE customer_name LIKE '%an%';


-- ============================================================
-- 9. NULL VALUES
-- ============================================================

-- Find customers with missing email
SELECT *
FROM customers
WHERE email IS NULL;

-- Find customers whose email is available
SELECT *
FROM customers
WHERE email IS NOT NULL;


-- ============================================================
-- 10. ORDER BY
-- ============================================================

-- Sort transactions from lowest to highest amount
SELECT *
FROM transactions
ORDER BY amount ASC;

-- Sort transactions from highest to lowest amount
SELECT *
FROM transactions
ORDER BY amount DESC;

-- Sort customers alphabetically
SELECT *
FROM customers
ORDER BY customer_name ASC;


-- ============================================================
-- 11. DISTINCT
-- ============================================================

-- Display unique risk categories
SELECT DISTINCT risk_category
FROM customers;

-- Display unique transaction types
SELECT DISTINCT transaction_type
FROM transactions;


-- ============================================================
-- 12. AGGREGATE FUNCTIONS
-- ============================================================

-- Count total customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- Find the highest transaction amount
SELECT MAX(amount) AS highest_transaction
FROM transactions;

-- Find the lowest transaction amount
SELECT MIN(amount) AS lowest_transaction
FROM transactions;

-- Calculate the total transaction amount
SELECT SUM(amount) AS total_transaction_amount
FROM transactions;

-- Calculate the average transaction amount
SELECT AVG(amount) AS average_transaction_amount
FROM transactions;


-- ============================================================
-- 13. GROUP BY
-- ============================================================

-- Count customers by risk category
SELECT risk_category, COUNT(*) AS customer_count
FROM customers
GROUP BY risk_category;

-- Count transactions by transaction type
SELECT transaction_type, COUNT(*) AS transaction_count
FROM transactions
GROUP BY transaction_type;

-- Calculate total transaction amount for each customer
SELECT customer_id, SUM(amount) AS total_amount
FROM transactions
GROUP BY customer_id;


-- ============================================================
-- 14. HAVING CLAUSE
-- ============================================================

-- Find customers with total transactions above 100000
SELECT customer_id, SUM(amount) AS total_amount
FROM transactions
GROUP BY customer_id
HAVING SUM(amount) > 100000;

-- Find risk categories having more than 5 customers
SELECT risk_category, COUNT(*) AS customer_count
FROM customers
GROUP BY risk_category
HAVING COUNT(*) > 5;


-- ============================================================
-- 15. INNER JOIN
-- ============================================================

-- Display customer and transaction details
SELECT
    c.customer_id,
    c.customer_name,
    t.transaction_id,
    t.amount
FROM customers c
INNER JOIN transactions t
ON c.customer_id = t.customer_id;


-- ============================================================
-- 16. LEFT JOIN
-- ============================================================

-- Display all customers and their transactions
SELECT
    c.customer_id,
    c.customer_name,
    t.transaction_id,
    t.amount
FROM customers c
LEFT JOIN transactions t
ON c.customer_id = t.customer_id;


-- ============================================================
-- 17. MULTIPLE TABLE JOIN
-- ============================================================

-- Display customer, transaction, and alert details
SELECT
    c.customer_id,
    c.customer_name,
    t.transaction_id,
    t.amount,
    a.alert_id,
    a.alert_status
FROM customers c
JOIN transactions t
ON c.customer_id = t.customer_id
JOIN aml_alerts a
ON t.transaction_id = a.transaction_id;


-- ============================================================
-- 18. SUBQUERY
-- ============================================================

-- Find transactions greater than the average transaction amount
SELECT *
FROM transactions
WHERE amount >
(
    SELECT AVG(amount)
    FROM transactions
);


-- Find customers who have generated AML alerts
SELECT *
FROM customers
WHERE customer_id IN
(
    SELECT customer_id
    FROM aml_alerts
);


-- ============================================================
-- 19. CASE STATEMENT
-- ============================================================

-- Categorize transactions based on amount
SELECT
    transaction_id,
    amount,
    CASE
        WHEN amount >= 100000 THEN 'HIGH VALUE'
        WHEN amount >= 50000 THEN 'MEDIUM VALUE'
        ELSE 'LOW VALUE'
    END AS transaction_category
FROM transactions;


-- ============================================================
-- 20. DATA VALIDATION QUERIES
-- ============================================================

-- Verify total number of customers
SELECT COUNT(*) AS customer_count
FROM customers;

-- Verify total number of transactions
SELECT COUNT(*) AS transaction_count
FROM transactions;

-- Verify transactions with missing customer IDs
SELECT *
FROM transactions
WHERE customer_id IS NULL;

-- Verify duplicate customer IDs
SELECT customer_id, COUNT(*) AS duplicate_count
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;


-- ============================================================
-- 21. AML TESTING

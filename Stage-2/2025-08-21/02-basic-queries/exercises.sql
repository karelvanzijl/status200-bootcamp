-- ================================================
-- BASIC SQL QUERIES PRACTICE EXERCISES
-- ================================================
-- Complete these exercises using the customers and products tables
-- Run setup-customers.sql and setup-products.sql first!

-- ================================================
-- SECTION 1: BASIC SELECT STATEMENTS
-- ================================================

-- Exercise 1.1: Select all customers
-- TODO: Write a query to show all customers

-- Exercise 1.2: Select specific columns
-- TODO: Show only first_name, last_name, and city for all customers

-- Exercise 1.3: Select with aliases
-- TODO: Show customer names with column aliases "First Name" and "Last Name"

-- ================================================
-- SECTION 2: FILTERING WITH WHERE
-- ================================================

-- Exercise 2.1: Filter by city
-- TODO: Find all customers from 'Chicago'

-- Exercise 2.2: Filter by gender
-- TODO: Find all female customers

-- Exercise 2.3: Filter by birth year
-- TODO: Find customers born after 1990

-- Exercise 2.4: Multiple conditions with AND
-- TODO: Find male customers from 'New York'

-- Exercise 2.5: Multiple conditions with OR
-- TODO: Find customers from either 'Los Angeles' or 'Houston'

-- Exercise 2.6: Using IN operator
-- TODO: Find customers from 'New York', 'Chicago', or 'San Francisco'

-- Exercise 2.7: Using BETWEEN
-- TODO: Find customers born between 1985 and 1990

-- ================================================
-- SECTION 3: PATTERN MATCHING WITH LIKE
-- ================================================

-- Exercise 3.1: Names starting with letter
-- TODO: Find customers whose first name starts with 'J'

-- Exercise 3.2: Names ending with letter
-- TODO: Find customers whose last name ends with 'son'

-- Exercise 3.3: Names containing pattern
-- TODO: Find customers whose first name contains 'an'

-- Exercise 3.4: Email domains
-- TODO: Find customers with Gmail email addresses (hint: LIKE '%gmail.com')

-- ================================================
-- SECTION 4: SORTING WITH ORDER BY
-- ================================================

-- Exercise 4.1: Sort by last name
-- TODO: Show all customers sorted by last name alphabetically

-- Exercise 4.2: Sort by age (calculated)
-- TODO: Show customers sorted by age, youngest first
-- Hint: Use YEAR(CURDATE()) - YEAR(date_of_birth) AS age

-- Exercise 4.3: Multi-column sorting
-- TODO: Sort by city first, then by last name within each city

-- Exercise 4.4: Descending order
-- TODO: Show customers sorted by birth year, most recent first

-- ================================================
-- SECTION 5: CALCULATED COLUMNS
-- ================================================

-- Exercise 5.1: Full name concatenation
-- TODO: Show a "Full Name" column combining first and last name

-- Exercise 5.2: Age calculation
-- TODO: Show each customer's current age

-- Exercise 5.3: Descriptive text
-- TODO: Create a column that says "John from Chicago is 35 years old"

-- Exercise 5.4: Email username extraction
-- TODO: Extract just the username part from email addresses
-- Hint: Use SUBSTRING_INDEX(email, '@', 1)

-- ================================================
-- SECTION 6: PRODUCTS TABLE PRACTICE
-- ================================================

-- Exercise 6.1: Expensive products
-- TODO: Find products costing more than $500

-- Exercise 6.2: Category filtering
-- TODO: Find all Electronics products

-- Exercise 6.3: Low stock alert
-- TODO: Find products with less than 50 units in stock

-- Exercise 6.4: Price range
-- TODO: Find products between $100 and $300

-- Exercise 6.5: Recent additions
-- TODO: Find products added in July 2024

-- Exercise 6.6: Product search
-- TODO: Find products with 'Pro' in the name

-- ================================================
-- SECTION 7: DATE FUNCTIONS
-- ================================================

-- Exercise 7.1: Birthday month
-- TODO: Find customers born in August

-- Exercise 7.2: Age groups
-- TODO: Categorize customers as 'Young' (under 30), 'Middle' (30-40), or 'Mature' (over 40)
-- Hint: Use CASE WHEN

-- Exercise 7.3: Days since added
-- TODO: Calculate how many days ago each product was added
-- Hint: Use DATEDIFF(CURDATE(), date_added)

-- ================================================
-- SECTION 8: COMBINING CONDITIONS
-- ================================================

-- Exercise 8.1: Complex customer filter
-- TODO: Find female customers from cities starting with 'S' who are over 30

-- Exercise 8.2: Product availability
-- TODO: Find active Electronics products under $200 with more than 100 units in stock

-- Exercise 8.3: Customer demographics
-- TODO: Find customers born in the 1990s

-- ================================================
-- SECTION 9: STRING FUNCTIONS
-- ================================================

-- Exercise 9.1: Name formatting
-- TODO: Show customer names in ALL CAPS

-- Exercise 9.2: Initial extraction
-- TODO: Show customer initials (first letter of first and last name)

-- Exercise 9.3: Product name length
-- TODO: Find products with names longer than 15 characters

-- ================================================
-- SECTION 10: CHALLENGE EXERCISES
-- ================================================

-- Challenge 10.1: Complex customer report
-- TODO: Create a report showing:
-- - Full name
-- - Age
-- - Email domain
-- - Years since joining (for customers table if applicable)
-- Sort by age descending

-- Challenge 10.2: Product inventory report
-- TODO: Create a report showing:
-- - Product name
-- - Category
-- - Price
-- - Stock level description ('High' if >100, 'Medium' if 50-100, 'Low' if <50)
-- - Days since added
-- Only include active products, sort by category then price

-- Challenge 10.3: Customer segmentation
-- TODO: Create customer segments:
-- - 'Premium': customers with 'premium' domain emails or from major cities
-- - 'Regular': all others
-- Show customer name, city, email, and segment

-- ================================================
-- SECTION 11: MARKDOWN PRACTICE EXERCISES
-- ================================================
-- These specific exercises are mentioned in the markdown file

-- Exercise 11.1: Names starting with specific letters
-- TODO: Find all customers whose first name starts with 'A' or 'E'

-- Exercise 11.2: Birthday month filtering  
-- TODO: Get customers born in December of any year

-- Exercise 11.3: City name patterns
-- TODO: Find customers from cities ending with 'ton' or 'land'

-- Exercise 11.4: Demographics with sorting
-- TODO: List all male customers over 35 years old, sorted by city

-- Exercise 11.5: Descriptive reporting
-- TODO: Create a report showing "John from New York is 40 years old" format

-- ================================================
-- HELPFUL REMINDERS:
-- ================================================
-- - Use quotes around text values: WHERE city = 'Chicago'
-- - Date format is YYYY-MM-DD: WHERE date_of_birth > '1990-01-01'
-- - Use % for wildcards in LIKE: WHERE name LIKE 'J%'
-- - Combine conditions with AND/OR: WHERE age > 30 AND city = 'NYC'
-- - Use parentheses for complex logic: WHERE (A OR B) AND C
-- ================================================
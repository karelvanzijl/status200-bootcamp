# Database Relationships

## What is an ID?

An **ID** is like a **receipt number** when you shop - every order gets exactly one unique number that never changes.

```sql
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,  -- This is the ID
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100)
);
```

When you add customers:
```sql
INSERT INTO customers (name, email) VALUES 
('Aamena', 'aamena@email.com'),
('Abdalla', 'abdalla@email.com'),
('Ahmed', 'ahmed@email.com');
```

MySQL automatically creates:

| **customer_id** | **name** | **email** |
|-----------------|----------|-----------|
| **1**           | Aamena   | aamena@email.com |
| **2**           | Abdalla  | abdalla@email.com |
| **3**           | Ahmed    | ahmed@email.com |

## Primary Key Explained

**PRIMARY KEY** = "This column makes each row unique"

Think of it like:
- **Receipt numbers** - every purchase gets exactly one, no duplicates
- **Customer account numbers** - each customer has one unique number
- **Product barcodes** - each product has one unique code

**Why we need it:**
- To find exactly one specific record
- To connect tables together
- No two rows can have the same primary key

## Foreign Key Explained

**FOREIGN KEY** = "This column points to another table's primary key"

Like writing down someone's **customer number** to know who they are.

```sql
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2)
);

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,  -- This points to customers table
    order_date DATE
);
```

## How Tables Connect - Shopping Example

Let's see how an online store database works:

### customers table:
| **customer_id (PRIMARY KEY)** | **name** | **email** |
|-------------------------------|----------|-----------|
| 1                             | Aamena   | aamena@email.com |
| 2                             | Abdalla  | abdalla@email.com |
| 3                             | Ahmed    | ahmed@email.com |

### products table:
| **product_id (PRIMARY KEY)** | **name** | **price** |
|------------------------------|----------|-----------|
| 1                            | Laptop   | 999.99    |
| 2                            | Mouse    | 25.99     |
| 3                            | Keyboard | 75.50     |

### orders table:
| **order_id (PRIMARY KEY)** | **customer_id (FOREIGN KEY)** | **order_date** |
|----------------------------|--------------------------------|----------------|
| 1                          | 1 ← points to Aamena           | 2025-01-15     |
| 2                          | 2 ← points to Abdalla          | 2025-01-16     |
| 3                          | 1 ← points to Aamena           | 2025-01-17     |

### order_details table:
| **detail_id (PRIMARY KEY)** | **order_id (FOREIGN KEY)** | **product_id (FOREIGN KEY)** | **quantity** |
|------------------------------|----------------------------|-------------------------------|--------------|
| 1                            | 1 ← points to Order #1      | 1 ← points to Laptop          | 1            |
| 2                            | 1 ← points to Order #1      | 2 ← points to Mouse           | 2            |
| 3                            | 2 ← points to Order #2      | 3 ← points to Keyboard        | 1            |
| 4                            | 3 ← points to Order #3      | 2 ← points to Mouse           | 1            |

## Reading the Connections

**Order #1:** Aamena bought 1 Laptop and 2 Mice on 2025-01-15  
**Order #2:** Abdalla bought 1 Keyboard on 2025-01-16  
**Order #3:** Aamena bought 1 Mouse on 2025-01-17  

**Notice:** Aamena (customer #1) made TWO different orders!

## Visual Diagram

When you use TablePlus diagram feature, you'll see:

```
┌─────────────┐    ┌─────────────┐    ┌───────────────┐    ┌─────────────┐
│ customers   │    │   orders    │    │ order_details │    │  products   │
├─────────────┤    ├─────────────┤    ├───────────────┤    ├─────────────┤
│customer_id  │◄───┤customer_id  │    │   detail_id   │    │ product_id  │
│ name        │    │ order_id    │◄───┤   order_id    │    │ name        │
│ email       │    │ order_date  │    │  product_id   │───►│ price       │
└─────────────┘    └─────────────┘    └───────────────┘    └─────────────┘
```

**The lines show:**
- `customer_id` in orders **points to** `customer_id` in customers
- `order_id` in order_details **points to** `order_id` in orders  
- `product_id` in order_details **points to** `product_id` in products

## Simple Shopping Analogy

Think of it like **online shopping:**

- **customers table** = Your account information
- **products table** = Store inventory  
- **orders table** = Your shopping receipts
- **order_details table** = Items listed on each receipt

**Foreign keys** are like writing down:
- "This receipt belongs to customer #1"
- "This item on the receipt is product #2"


# Shopping Cart Exercise - Complete Tutorial

## The Exercise

You work for an online store and need to manage a shopping cart. Create a system that can:

1. Calculate the total cost of all items
2. Find all items that cost more than $20
3. Count how many electronics items are in the cart
4. Find the most expensive item in the cart
5. Apply a simple 10% discount to items over $50 (just show the discounted price)

## The Data

```javascript
const shoppingCart = [
    {
        id: 1,
        name: "Wireless Headphones",
        price: 79.99,
        category: "electronics",
        quantity: 1,
    },
    { id: 2, name: "Coffee Mug", price: 12.5, category: "home", quantity: 2 },
    {
        id: 3,
        name: "Laptop Stand",
        price: 45.0,
        category: "office",
        quantity: 1,
    },
    {
        id: 4,
        name: "Bluetooth Speaker",
        price: 89.99,
        category: "electronics",
        quantity: 1,
    },
    {
        id: 5,
        name: "Notebook Set",
        price: 18.75,
        category: "office",
        quantity: 3,
    },
];
```

## The Solutions

### 1. Calculate Total Cost

```javascript
// Loop through each item and add up the costs
let totalCost = 0;
for (let i = 0; i < shoppingCart.length; i++) {
    const item = shoppingCart[i];
    totalCost = totalCost + item.price * item.quantity;
}

console.log("Total cart cost: $" + totalCost.toFixed(2));
// Output: Total cart cost: $296.23
```

### 2. Find Expensive Items (over $20)

```javascript
// Loop through and find items where price > 20
const expensiveItems = [];
for (let i = 0; i < shoppingCart.length; i++) {
    const item = shoppingCart[i];
    if (item.price > 20) {
        expensiveItems.push(item);
    }
}

console.log("Items over $20:");
for (let i = 0; i < expensiveItems.length; i++) {
    const item = expensiveItems[i];
    console.log(item.name + ": $" + item.price);
}
```

### 3. Count Electronics Items

```javascript
// Count electronics items
let electronicsCount = 0;
for (let i = 0; i < shoppingCart.length; i++) {
    const item = shoppingCart[i];
    if (item.category === "electronics") {
        electronicsCount++;
    }
}

console.log("Electronics items: " + electronicsCount);
// Output: Electronics items: 2
```

### 4. Find the Most Expensive Item

```javascript
// Find the item with the highest price
let mostExpensive = shoppingCart[0]; // Start with the first item
for (let i = 1; i < shoppingCart.length; i++) {
    const item = shoppingCart[i];
    if (item.price > mostExpensive.price) {
        mostExpensive = item;
    }
}

console.log("Most expensive item:");
console.log(mostExpensive.name + ": $" + mostExpensive.price);
// Output: Bluetooth Speaker: $89.99
```

### 5. Apply 10% Discount to Items Over $50

```javascript
// Show items with discount applied (but don't change original data)
console.log("Items with 10% discount applied:");
for (let i = 0; i < shoppingCart.length; i++) {
    const item = shoppingCart[i];

    if (item.price > 50) {
        const discountedPrice = item.price * 0.9; // 10% discount
        console.log(
            item.name +
                ": $" +
                item.price +
                " → $" +
                discountedPrice.toFixed(2) +
                " (10% off!)"
        );
    } else {
        console.log(item.name + ": $" + item.price + " (no discount)");
    }
}
```

**Working with objects:**

-   Access properties with dot notation: `item.price` or `item.name`
-   Create new objects by listing properties: `{ name: "test", price: 10 }`

**Working with arrays:**

-   Use `array.length` to get the size
-   Use `array.push(item)` to add items
-   Access items with index: `array[0]` for first item

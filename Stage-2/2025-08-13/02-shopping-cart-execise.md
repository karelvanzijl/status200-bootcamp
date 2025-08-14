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

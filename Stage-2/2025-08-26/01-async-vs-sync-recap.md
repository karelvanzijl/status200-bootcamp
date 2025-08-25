# Async vs Sync Recap & In-Class Practice

## Quick Recap: What We Learned Yesterday

Yesterday we covered the fundamental difference between **synchronous** and **asynchronous** programming using the restaurant waiter metaphor:

### 🔄 **Synchronous (Blocking)**

-   Does ONE task at a time
-   Waits for each task to complete before starting the next
-   Like an inefficient waiter standing in the kitchen waiting for food

### ⚡ **Asynchronous (Non-blocking)**

-   Can juggle multiple tasks simultaneously
-   Starts tasks and continues working while they complete
-   Like an efficient waiter taking multiple orders and delivering when ready

### Key JavaScript Tools:

-   `async` - marks a function as asynchronous
-   `await` - waits for a specific operation to complete

### The "Restaurant Pattern" for Better Performance:

Instead of waiting for each operation to complete before starting the next:

```javascript
// SLOW: Sequential - each operation waits for the previous
const result1 = await operation1(); // Wait 2 seconds
const result2 = await operation2(); // Then wait 1 second
// Total: 3 seconds
```

You can start all operations immediately, then wait for them to complete:

```javascript
// FAST: Concurrent - all operations start immediately
const promise1 = operation1(); // Starts immediately (doesn't wait)
const promise2 = operation2(); // Also starts immediately
const result1 = await promise1; // Now wait for completion
const result2 = await promise2; // This might already be done!
// Total: 2 seconds (time of longest operation)
```

---

## Exercises

### Exercise 1: Spot the Problem

**Time: 5 minutes**

Look at this code and discuss with a partner - what's wrong with it?

```javascript
function getUserData() {
    const user = database.query("SELECT * FROM users WHERE id = 1"); // Takes 2 seconds
    const orders = database.query("SELECT * FROM orders WHERE user_id = 1"); // Takes 1 second
    const preferences = database.query(
        "SELECT * FROM preferences WHERE user_id = 1"
    ); // Takes 0.5 seconds

    return { user, orders, preferences };
}

console.log("Loading user data...");
const data = getUserData(); // How long does this take?
console.log("Data loaded!", data);
```

**Discussion points:**

-   How long will this take total?
-   What happens to the user interface while this runs?
-   How could we improve it?

<details>
<summary><strong>Answers</strong></summary>

-   It takes 3.5 seconds total (2 + 1 + 0.5)
-   The UI is blocked for 3.5 seconds, leading to a poor user experience
-   We can make it asynchronous using `async/await` to improve responsiveness
</details>

---

### Exercise 2: Convert to Async

**Time: 10 minutes**

Rewrite the above function using `async/await`. Try two versions:

**Version A**: Sequential (one after another)

```javascript
async function getUserDataSequential() {
    // Your code here - use await for each query
}
```

**Version B**: Concurrent (using the restaurant pattern)

```javascript
async function getUserDataConcurrent() {
    // Your code here - use the restaurant pattern from above
    // Hint: Start all queries first, then await them
}
```

**Question:** Which version is faster and why?

<details>
<summary><strong>Answers</strong></summary>

-   Version A takes 3.5 seconds (2 + 1 + 0.5)
-   Version B takes 2 seconds (all queries run concurrently, total time is the longest single query)
</details>

<details>
<summary><strong>Code Solutions</strong></summary>

**Version A: Sequential**

```javascript
async function getUserDataSequential() {
    const user = await database.query("SELECT * FROM users WHERE id = 1");
    const orders = await database.query(
        "SELECT * FROM orders WHERE user_id = 1"
    );
    const preferences = await database.query(
        "SELECT * FROM preferences WHERE user_id = 1"
    );

    return { user, orders, preferences };
}
```

**Version B: Concurrent**

```javascript
async function getUserDataConcurrent() {
    // Start all queries immediately
    const userPromise = database.query("SELECT * FROM users WHERE id = 1");
    const ordersPromise = database.query(
        "SELECT * FROM orders WHERE user_id = 1"
    );
    const preferencesPromise = database.query(
        "SELECT * FROM preferences WHERE user_id = 1"
    );

    // Wait for all to complete
    const user = await userPromise;
    const orders = await ordersPromise;
    const preferences = await preferencesPromise;

    return { user, orders, preferences };
}
```

</details>

---

### Exercise 3: Real-World Scenario

**Time: 15 minutes**

You're building a restaurant dashboard that needs to load:

1. Today's menu items (2 seconds)
2. Current orders (1.5 seconds)
3. Staff schedule (1 second)
4. Revenue report (3 seconds)

Write an async function that loads all this data as efficiently as possible:

```javascript
async function loadDashboard() {
    // Your code here - use the restaurant pattern from yesterday:
    // const promise1 = operation1(); // starts immediately
    // const promise2 = operation2(); // starts immediately
    // const result1 = await promise1; // wait for completion
    // const result2 = await promise2; // wait for completion
}
```

<details>
<summary><strong>Answer</strong></summary>
Most efficient time is 3 seconds (time of the longest operation) when all operations run concurrently
</details>
<br>
<details>
<summary><strong>Code Solution</strong></summary>

```javascript
async function loadDashboard() {
    try {
        // Start all operations immediately
        const menuPromise = getMenuItems(); // 2 seconds
        const ordersPromise = getCurrentOrders(); // 1.5 seconds
        const schedulePromise = getStaffSchedule(); // 1 second
        const revenuePromise = getRevenueReport(); // 3 seconds

        // Wait for all to complete
        const menu = await menuPromise;
        const orders = await ordersPromise;
        const schedule = await schedulePromise;
        const revenue = await revenuePromise;

        return { menu, orders, schedule, revenue };
    } catch (error) {
        console.error("Error loading dashboard data:", error);
        throw error;
    }
}
```

</details>
<br>

**Bonus challenge:** Add error handling with try/catch

```javascript
// Try catch example
try {
    // Your code here
} catch (error) {
    console.error("Error loading dashboard data:", error);
}
```

---

### Exercise 4: Debug the Async Code

**Time: 10 minutes**

This code has bugs. Find and fix them:

```javascript
// Bug-filled code - what's wrong?
async function problematicFunction() {
    console.log("Starting...");

    const result1 = database.query("SELECT * FROM table1"); // Missing something?
    console.log("Result 1:", result1);

    const result2 = await database.query("SELECT * FROM table2");
    console.log("Result 2:", result2);

    return result1 + result2; // Will this work?
}

problematicFunction(); // Missing something here too?
console.log("This should run after the function completes");
```

**Hint:** Look for missing `await` keywords and promise handling

<details>
<summary><strong>Answers</strong></summary>

-   Add `await` before the first database query: `const result1 = await database.query(...)`
-   Wrap the function call in an async function or use `.then()` to handle the promise: `await problematicFunction();`
</details>
<br>
<details>
<summary><strong>Code Solution</strong></summary>

```javascript
// Fixed code
async function problematicFunction() {
    console.log("Starting...");

    const result1 = await database.query("SELECT * FROM table1"); // Added await
    console.log("Result 1:", result1);

    const result2 = await database.query("SELECT * FROM table2");
    console.log("Result 2:", result2);

    return result1 + result2; // This will now work properly
}

// And call it properly:
async function main() {
    await problematicFunction(); // Added await in async context
    console.log("This should run after the function completes");
}

main();
```

</details>

---

### Exercise 5: Performance Comparison

**Time: 10 minutes**

**Scenario:** You need to fetch data from 3 different APIs:

-   Weather API (2 seconds)
-   News API (1.5 seconds)
-   Stock API (1 second)

Calculate the total time for:

1. **Synchronous approach:** One after another
2. **Asynchronous sequential:** Using await one by one
3. **Asynchronous concurrent:** Start all, then await results

```javascript
// Time each approach - which is fastest?

// Approach 1: Sync (simulate with blocking code)
function syncApproach() {
    // Your answer: Total time = 4.5 seconds (2 + 1.5 + 1)
}

// Approach 2: Async Sequential
async function asyncSequential() {
    // Your answer: Total time = 4.5 seconds (still waiting one by one)
}

// Approach 3: Async Concurrent (restaurant pattern)
async function asyncConcurrent() {
    // Your answer: Total time = 2 seconds (longest single operation)
    // Hint: Use the pattern from yesterday's restaurant example
}
```

<details>
<summary><strong>Answers</strong></summary>

-   Approach 1: 4.5 seconds (2 + 1.5 + 1)
-   Approach 2: 4.5 seconds (still waiting one by one)
-   Approach 3: 2 seconds (all operations run concurrently, total time is the longest single operation)

</details>
<br>
<details>
<summary><strong>Code Solutions</strong></summary>

**Approach 1: Sync**

```javascript
function syncApproach() {
    // Each operation blocks the next
    const weather = getWeatherData(); // 2 seconds
    const news = getNewsData(); // 1.5 seconds
    const stocks = getStockData(); // 1 second
    // Total: 4.5 seconds
    return { weather, news, stocks };
}
```

**Approach 2: Async Sequential**

```javascript
async function asyncSequential() {
    // Still waiting one by one
    const weather = await getWeatherData(); // 2 seconds
    const news = await getNewsData(); // 1.5 seconds
    const stocks = await getStockData(); // 1 second
    // Total: 4.5 seconds
    return { weather, news, stocks };
}
```

**Approach 3: Async Concurrent**

```javascript
async function asyncConcurrent() {
    // Start all at once
    const weatherPromise = getWeatherData(); // Starts immediately
    const newsPromise = getNewsData(); // Starts immediately
    const stocksPromise = getStockData(); // Starts immediately

    // Wait for completion
    const weather = await weatherPromise; // 2 seconds max
    const news = await newsPromise; // Might already be done
    const stocks = await stocksPromise; // Might already be done
    // Total: 2 seconds (longest operation)

    return { weather, news, stocks };
}
```

</details>

---

## 🧠 Quick Knowledge Check

Before we move on, let's test your understanding:

1. **True/False:** `async` functions always run faster than regular functions
2. **True/False:** You can use `await` inside any function
3. **True/False:** You must always `await` immediately when calling an async function
4. **Multiple Choice:** When should you use async/await?
    - a) For all functions
    - b) Only for mathematical calculations
    - c) For operations that take time (DB, API, files)
    - d) Never, it's too complicated

**Discuss before looking at solutions!**

<details>
<summary><strong>Answers</strong></summary>

1. **False** - async functions don't automatically run faster, they just don't block other operations
2. **False** - `await` can only be used inside `async` functions
3. **False** - you can start async operations and await them later for better performance
4. **c)** - For operations that take time (DB, API, files)
 </details>

---

## 💡 Key Takeaways for Today

-   **Async/await makes your apps faster and more responsive**
-   **Use `await` for operations that take time**
-   **Start multiple async operations together for better performance**
-   **Always handle errors with try/catch in async functions**
-   **The restaurant waiter metaphor: be efficient, don't stand around waiting!**

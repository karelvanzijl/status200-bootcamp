# For in JavaScript

Sometimes you want your script to run a specific piece of code multiple times. Remember the exercise where we displayed a Fibonacci sequence?

We did something like this:

```javascript
let fib1 = 0;
let fib2 = 1;

console.log(fib1);
console.log(fib2);

function nextFibonacci() {
    let next = fib1 + fib2;
    console.log(next);
    fib1 = fib2;
    fib2 = next;
}

nextFibonacci();
nextFibonacci();
nextFibonacci();
```

This works, but it's not very efficient. What if we wanted to display 100 Fibonacci numbers? We would have to call `nextFibonacci()` 98 more times!

Wouldn't it be better if we could just say "display the next Fibonacci number 100 times" without writing `nextFibonacci()` over and over again?

## Loops to the Rescue

Loops allow us to repeat a block of code multiple times without having to write it out each time. This makes our code cleaner and easier to manage.

## Basic Structure

```javascript
for (let i = 0; i < 10; i++) {
    // Code to run in each iteration
}
```

**Breakdown:**

-   `for`: This keyword starts the loop.
-   `(let i = 0; i < 10; i++)`: This is the loop's control structure.
    -   `let i = 0`: Initializes a variable `i` to 0. This variable is often called the **loop counter**.
    -   `i < 10`: This is the **condition**. The loop will continue as long as this condition is true.
    -   `i++`: This increments `i` by 1 after each iteration. It's shorthand for `i = i + 1`.
-   `{ // Code to run in each iteration }`: This is the **code block** that runs each time the loop iterates.

## Example: Displaying Fibonacci Numbers

```javascript
let fib1 = 0;
let fib2 = 1;
console.log(fib1);
console.log(fib2);

function showFibonacci(n) {
    for (let i = 2; i < n; i++) {
        let next = fib1 + fib2;
        console.log(next);
        fib1 = fib2;
        fib2 = next;
    }
}

showFibonacci(10);
```

In this example, we define a function `showFibonacci(n)` that displays the first `n` Fibonacci numbers. The loop runs from 2 to `n`, calculating and displaying the next Fibonacci number each time.

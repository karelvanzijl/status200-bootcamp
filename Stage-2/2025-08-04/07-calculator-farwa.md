## Navigation

1. [Overview](readme.md)
2. [Build ATM Machine v1.0](01-build-atm-machine-v1.md)
3. [Function: isNaN()](<02-function-isNan().md>)
4. [Function: parseFloat()](<03-function-parseFloat().md>)
5. [Function: parseInt()](<04-function-parseInt().md>)
6. [Function: toFixed()](<05-function-toFixed().md>)
7. [Homework: Converter](06-homework-converter.md)
8. [Calculator Example by Farwa](07-calculator-farwa.md) ← _You are here_

---

# Calculator HTML and JavaScript Code

This code creates a simple calculator with basic arithmetic operations: addition, subtraction, multiplication, and division. It includes input validation to ensure that the user inputs valid numbers.

The code below was written by Farwa and validation was added by Dayan in class!

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
    </head>
    <body>
        <input type="text" id="input1" />
        <input type="text" id="input2" />

        <button onclick="plus()">+</button>
        <button onclick="sub()">_</button>
        <button onclick="multiple()">*</button>
        <button onclick="divison()">/</button>

        <p id="result"></p>
        <script>
            const resultDisplay = document.getElementById("result");

            function numberValidation(number1, number2) {
                if (isNaN(number1) || isNaN(number2)) {
                    resultDisplay.textContent = "Please enter numbers only.";
                    return false;
                } else if (number1 == "" || number2 == "") {
                    resultDisplay.textContent = "Input can't be empty!";
                    return false;
                } else {
                    return true;
                }
            }

            function plus() {
                const input1 = document.getElementById("input1").value;
                const input2 = document.getElementById("input2").value;
                const validationResult = numberValidation(input1, input2);

                if (validationResult) {
                    const total = parseFloat(input1) + parseFloat(input2);

                    resultDisplay.textContent = total;
                }
            }

            function sub() {
                const input1 = document.getElementById("input1").value;
                const input2 = document.getElementById("input2").value;

                if (isNaN(input1) || isNaN(input2)) {
                    resultDisplay.textContent = "Please enter numbers only.";
                } else if (input1 == "" || input2 == "") {
                    resultDisplay.textContent = "Input can't be empty!";
                } else {
                    const total = parseFloat(input1) - parseFloat(input2);

                    resultDisplay.textContent = total;
                }
            }
            function multiple() {
                const input1 = document.getElementById("input1").value;
                const input2 = document.getElementById("input2").value;

                if (isNaN(input1) || isNaN(input2)) {
                    resultDisplay.textContent = "Please enter numbers only.";
                } else if (input1 == "" || input2 == "") {
                    resultDisplay.textContent = "Input can't be empty!";
                } else {
                    const total = input1 * input2;

                    resultDisplay.textContent = total;
                }
            }

            function divison() {
                const input1 = document.getElementById("input1").value;
                const input2 = document.getElementById("input2").value;

                if (isNaN(input1) || isNaN(input2)) {
                    resultDisplay.textContent = "Please enter numbers only.";
                } else if (input1 == "" || input2 == "") {
                    resultDisplay.textContent = "Input can't be empty!";
                } else if (input2 == 0) {
                    resultDisplay.textContent =
                        "Error! division by zero is not allowed!";
                } else {
                    const total = input1 / input2;

                    resultDisplay.textContent = total;
                }
            }
        </script>
    </body>
</html>
```

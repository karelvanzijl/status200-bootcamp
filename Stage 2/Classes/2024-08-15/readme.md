# Node Package Manager (NPM)

## Intro

NPM is a command line tool as well as a registry of third party libraries (modules build by other people) that we can add to our Node applications.

For pretty much any functionality that you want to add to you application there is most likely a free, open source library (package or node module, whatever you want to call it) avialable on the NPM registry

Checkout https://npmjs.com, you will see it is used by more than **17 million developers** worldwide, and has more than **2 million packages**.

-   All these packages are free
-   All these packages can easily be added to your application
-   You can also share your own Node modules with others and publish them on NPM

#### NPM command line tool

We can add packages to our application using the NPM command line tool.

NPM is comes with Node. When you install Node, you also get NPM.

-   Open up your terminal
-   Run the following command:

    ```bash
    npm -v

    # This should output something like:
    # 10.8.1
    #
    ```

-   Run the following command:

    ```bash
    node -v

    # This should output something like:
    # v20.16.0
    ```

NOTICE: The version of Node is different from the verison of NPM. This is because these two programs are developed independently.

## Package.json

### Task

All these tasks should be done using the command prompt.

-   Navigate to you `Users` folder
-   Create a new folder called `Projects` inside your "_Users_" folder
-   Create a new folder `npm-demo` inside the newly created "_Projects_" folder.

We're going to use this `npm-demo` folder throughout this session.

### NPM init

Before you can add any Node packages to your application, you need to create a file that is called `package.json`.

Package.json is basically a json file that includes some basic information about your application:

-   name
-   version
-   authors
-   other metadata

NOTICE: All Node application should have this package.json file.

#### Create package.json

Using your command prompt:

-   run `npm init`. This will start the package.json creation process.
-   Press enter for each question. By doing so you accept the default value NPM suggests:

    ```bash
    package name: (npm-demo)
    version: (1.0.0)
    description:
    entry point: (index.js)
    test command:
    git repository:
    keywords:
    author:
    license: (ISC)
    About to write to /Users/karelvanzijl/Projects/github/bootcamp/Stage 2/Classes/2024-08-15/npm-demo/package.json:

    {
        "name": "npm-demo",
        "version": "1.0.0",
        "main": "index.js",
        "scripts": {
            "test": "echo \"Error: no test specified\" && exit 1"
        },
        "author": "",
        "license": "ISC",
        "description": ""
    }


    Is this OK? (yes)
    ```

-   run `dir` in the command prompt. You'll see a file called package.json was created inside your `npm-demo` project folder.

NOTICE: before adding any node packages to your application, you need to create a `package.json` file.

BEST PRACTICE: whenever you start a Node project, run `npm init` to create the package.json file.

TIP: there's a faster way to create this package.json file. You do this by using `npm init --yes`. This will tell npm you accept the default settings and you don't to answer all the questions one by one.

## Install a Node package

We're going to install a third party library, or third party Node package called `mysql2` to our application.

-   Go to https://npmjs.com
-   Search for `mysql` and choose the package called `mysql2`
-   This should bring you to the [mysql2](https://www.npmjs.com/package/mysql2) package page
-   On the MySQL2 package page, navigate to `Installation`
-   Copy the code
    ```bash
    npm install --save mysql2
    ```
    or
    ```bash
    npm i --save mysql2
    ```

#### What is happening

Open this node project in VSCode using the command prompt: `code .`

-   open package.json
    ```json
    {
        "name": "npm-demo",
        "version": "1.0.0",
        "main": "index.js",
        "scripts": {
            "test": "echo \"Error: no test specified\" && exit 1"
        },
        "author": "",
        "license": "ISC",
        "description": "",
        "dependencies": {
            "mysql2": "^3.11.0"
        }
    }
    ```
    A new property _dependencies_ as added and inside we can se we've installed mysql2 version 3.11.0.
-   Notice that a new folder called `node_modules` was created.
    -   All third party packages will be installed in this folder.
    -   Inside this folder you'll we see a whole bunch of packages that have been installed. One of them is called `mysql2`

_So why were all these other packages installed, didn't we just ask to install mysql2 only?_

-   Open the package.json file inside the mysql2 folder.
    -   _Reminder_: all node applications have a package.json
-   Here you'll see that the mysql2 package has some dependencies itself

    ```json
    {
        "dependencies": {
            "aws-ssl-profiles": "^1.1.1",
            "denque": "^2.1.0",
            "generate-function": "^2.3.1",
            "iconv-lite": "^0.6.3",
            "long": "^5.2.1",
            "lru-cache": "^8.0.0",
            "named-placeholders": "^1.1.3",
            "seq-queue": "^0.0.5",
            "sqlstring": "^2.3.2"
        }
    }
    ```

    This means the mysql2 package itself depends on some other third party packages.

    NPM will install these packages too during the installation of mysql2, because without these other packages, the mysql2 package won't work... _it is dependent on those packages_

## Using a package

### From yesterday

`const some_module = require("somemodule");`

Order in which Node searches for the module:

1. Looks if it is a core module (like path, os and fs)
2. File or folder in this application
3. Looks inside the node_modules folder

_REMARK_: when you use a reference to a file or folder like `./` or `../` with or without a filename, Node assumes you're looking for a file relative to the folder. For example:

`require("./somemodule");`

1. First: Node will assume there's a file called _something.js_ in the same folder
2. Second: if no file is found, Node assumes the require refers to a folder and will look for a file ./somemodule/_index.js_

### Use package

Lets start using the installed mysql2 package.

-   Create a file called `index.js`
-   Import the mysql2 package
    ```JS
    // Import the mysql2 package
    const mysql = require("mysql2");
    ```
-   Create a database connection (connection details might differ from the example below)

    ```JS
    // Import the mysql2 package
    const mysql = require("mysql2");

    // Create the connection to database
    const connection = mysql.createConnection({
        host: "localhost",
        user: "root",
        database: "bootcamp",
    });
    ```

-   Run your first query

    ```JS
    // Implement the mysql2 package
    const mysql = require("mysql2");

    // Create the connection to database
    const connection = mysql.createConnection({
        host: "localhost",
        user: "root",
        database: "bootcamp",
    });

    // A simple SELECT query
    connection.query("SELECT * FROM `customer`", function (err, results, fields) {
        // results contains rows returned by server
        console.log(results);
        // fields contains extra meta data about results, if available
        console.log(fields);
    });
    ```

-   This will output (based on dataset used in [tasks.sql](../2024-08-14/sql/tasks.sql) from yesterday)
    ```js
    [
        {
            cust_id: 1,
            cust_name: "Alice Johnson",
            cust_city: "New York",
            cust_country: "USA",
        },
        {
            cust_id: 2,
            cust_name: "Bob Smith",
            cust_city: "Los Angeles",
            cust_country: "USA",
        },
        {
            cust_id: 3,
            cust_name: "Carlos Gonzalez",
            cust_city: "Mexico City",
            cust_country: "Mexico",
        },
        {
            cust_id: 4,
            cust_name: "Diana Prince",
            cust_city: "London",
            cust_country: "UK",
        },
        {
            cust_id: 5,
            cust_name: "Eva Green",
            cust_city: "Paris",
            cust_country: "France",
        },
    ];
    ```
    ```js
    [
        `cust_id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        `cust_name` VARCHAR(100),
        `cust_city` VARCHAR(100),
        `cust_country` VARCHAR(100)
    ]
    ```

# Create your first website

---

## Task

1. Set the title for each page that makes sense.
    - Homepage: "Welcome to My Site"
    - About page: "About Me"
    - Contact page: "Contact Me"
2. Add a heading (`<h1>`) to each page.
3. Add a paragraph (`<p>`) to each page.
4. Add links (`<a>`) to each page:
    - Homepage:
        - Link to the About page.
        - Link to the Contact page.
    - About:
        - Link back to the Homepage.
        - Link to the Contact page.
    - Contact:
        - Link back to the Homepage.
        - Link to the About page.
5. Add an image (`<img>`) to the Homepage:
    - Use image URL `https://picsum.photos/1000`.
    - Set the width to `300` pixels.
6. Add an unordered list (`<ul>`) to the About page:
    - List your top 3 hobbies or interests.
7. Add an image (`<img>`) to the About page:
    - Use the `profile.jpg` you saved in tour `Images` folder.
8. Add an ordered list (`<ol>`) to the Contact page:
    - List 3 ways to contact you (e.g., email, phone, social media).

---

## Solution

Here's an eample of how your HTML files should look like. It does not have to be exactly the same, but it should contain all the elements mentioned in the task.

`index.html` file:

```html
<!DOCTYPE html>
<html>
    <head>
        <title>Welcome to My Site</title>
    </head>
    <body>
        <h1>Welcome to My Site</h1>
        <p>This is the homepage of my first website.</p>
        <img src="https://picsum.photos/1000" width="300" alt="Random Image" />
        <h2>Navigation</h2>
        <ul>
            <li><a href="Pages/about.html">About Me</a></li>
            <li><a href="Pages/contact.html">Contact Me</a></li>
        </ul>
    </body>
</html>
```

`Pages/about.html` file:

```html
<!DOCTYPE html>
<html>
    <head>
        <title>About Me</title>
    </head>
    <body>
        <h1>About Me</h1>
        <p>This page is about me and my interests.</p>
        <img src="../Images/profile.jpg" alt="Profile Image" />
        <h2>My Hobbies</h2>
        <ul>
            <li>Reading</li>
            <li>Coding</li>
            <li>Traveling</li>
        </ul>
        <h2>Navigation</h2>
        <ul>
            <li><a href="../index.html">Home</a></li>
            <li><a href="contact.html">Contact Me</a></li>
        </ul>
    </body>
</html>
```

`Pages/contact.html` file:

```html
<!DOCTYPE html>
<html>
    <head>
        <title>Contact Me</title>
    </head>
    <body>
        <h1>Contact Me</h1>
        <p>You can contact me through the following methods:</p>
        <ol>
            <li>Email: name@eample.com</li>
            <li>Phone: 123-456-7890</li>
            <li>Social Media: @username</li>
        </ol>
        <h2>Navigation</h2>
        <ul>
            <li><a href="../index.html">Home</a></li>
            <li><a href="about.html">About Me</a></li>
        </ul>
    </body>
</html>
```

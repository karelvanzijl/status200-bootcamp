# Portfolio Website Project

Build a professional portfolio website from scratch, learning fundamental web development concepts through progressive enhancement. You'll start with raw HTML and gradually add styling, layout, responsiveness, and interactive effects.

## 📋 Table of Contents

1. [Learning Objectives](#learning-objectives)
2. [Project Structure](#project-structure)
3. [Step-by-Step Instructions](#step-by-step-instructions)
    - [Step 1: Foundation - HTML Structure](#step-1-foundation---html-structure)
    - [Step 2: Basic Layout Foundation](#step-2-basic-layout-foundation)
    - [Step 3: Header and Navigation](#step-3-header-and-navigation)
    - [Step 4: Typography and Spacing](#step-4-typography-and-spacing)
    - [Step 5: Visual Design and Styling](#step-5-visual-design-and-styling)
    - [Step 6: Footer and Page Layout](#step-6-footer-and-page-layout)
    - [Step 7: Responsive Design](#step-7-responsive-design)
    - [Step 8: Polish and Interactive Effects](#step-8-polish-and-interactive-effects)
4. [Design Guidelines](#design-guidelines)
5. [Tips for Success](#-tips-for-success)

---

## Learning Objectives

By completing this project, you will:

-   Write semantic HTML5 structure
-   Apply CSS fundamentals and progressive enhancement
-   Master layout techniques using Flexbox
-   Create typography hierarchy and visual design
-   Implement responsive design for all devices
-   Add CSS animations and transitions

---

## Project Structure

Your final project should include:

```
portfolio/
├── css/
│   └── styles.css
├── about.html
├── index.html
├── projects.html
└── skills.html
```

---

## Step-by-Step Instructions

### Step 1: Foundation - HTML Structure

**Goal:** Create semantic HTML without styling

1. Create `index.html` with proper document structure
2. Add semantic elements: `<header>`, `<nav>`, `<main>`, `<section>`, `<footer>`
3. Include:
    - Navigation with logo and menu items
    - Hero section with heading and description
    - Content section with "About Me" information
    - Footer with contact information
4. Link to `styles.css` (create empty file for now)

```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>My Portfolio</title>
    </head>
    <body>
        <header>
            <nav>
                <div class="logo">My Portfolio</div>
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#projects">Projects</a></li>
                    <li><a href="#skills">Skills</a></li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
            </nav>
        </header>

        <main>
            <!-- Hero Section -->
            <section class="hero">
                <h1>Welcome to My Portfolio</h1>
                <p>
                    I'm a passionate web developer creating amazing digital
                    experiences.
                </p>
            </section>

            <!-- Content Section -->
            <section class="content">
                <h2>About Me</h2>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed
                    do eiusmod tempor incididunt ut labore et dolore magna
                    aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                    ullamco laboris nisi ut aliquip ex ea commodo consequat.
                </p>

                <p>
                    Duis aute irure dolor in reprehenderit in voluptate velit
                    esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
                    occaecat cupidatat non proident, sunt in culpa qui officia
                    deserunt mollit anim id est laborum.
                </p>
            </section>
        </main>

        <footer>
            <p>Contact: your.email@example.com | Phone: (555) 123-4567</p>
            <p>&copy; 2025 My Portfolio. All rights reserved.</p>
        </footer>
    </body>
</html>
```

[📖 View Demo](https://status200.my/bootcamp/practice/2025-07-24/step-0-foundation/index.html)

### Step 2: Basic Layout Foundation

**Goal:** Add CSS reset and basic typography

1. Add CSS reset
    - Use universal selector to remove default margins
    - Use universal selector to remove default padding
    - Use `box-sizing: border-box` for consistent sizing
2. Set up basic body styles:
    - Font family: Arial, sans-serif
    - Line height: 1.6
    - Color: #333
    - Max-width: 1200px with auto margins
3. Add basic padding to body, 20px left and right

[📖 View Demo](https://status200.my/bootcamp/practice/2025-07-24/step-1-layout/index.html)

**🎯 Learning Focus:** CSS reset, box-sizing, container patterns

### Step 3: Header and Navigation

**Goal:** Create horizontal navigation with flexbox

1. Style the header:
    - Add border-bottom of 2 pixel, solid and color #eee. Also add a margin to the bottom of 20px
2. Create navigation layout:
    - Use the flex model for the navigation. Logo on the left, menu items on the right
    - Style the logo (font-size: 1.5rem, bold, color: #2c3e50)
3. Style navigation menu:
    - Display as flex with gap between items
    - Remove list styles
    - Style links with hover effects (color: #3498db)
    - Add CSS transitions

[📖 View Demo](https://status200.my/bootcamp/practice/2025-07-24/step-2-navigation/index.html)

**🎯 Learning Focus:** Flexbox layout, navigation patterns, hover effects

### Step 4: Typography and Spacing

**Goal:** Establish visual hierarchy and readable typography

1. Create heading styles:
    - h1: 2.5rem, color: #2c3e50
    - h2: 2rem, color: #2c3e50
2. Style paragraphs:
    - Line-height: 1.8
    - Color: #555
    - Margin-bottom: 15px
3. Add section spacing and content layout
4. Create hero section with centered content and larger text

**🎯 Learning Focus:** Typography scale, spacing rhythm, visual hierarchy

### Step 5: Visual Design and Styling

**Goal:** Add backgrounds, colors, and visual appeal

1. Add body background color (#f8f9fa)
2. Enhance header:
    - Background: white
    - Add box-shadow
    - Make header sticky (`position: sticky; top: 0`)
3. Style hero section:
    - Add gradient background
    - White text color
    - Padding and border-radius
    - Box shadow for depth
4. Style content section as card:
    - White background
    - Padding, border-radius
    - Box shadow and border

**🎯 Learning Focus:** Color schemes, gradients, box shadows, sticky positioning

### Step 6: Footer and Page Layout

**Goal:** Create full-height layout with proper footer

1. Make body a flex container:
    - `min-height: 100vh`
    - `display: flex; flex-direction: column`
2. Make main content grow: `main { flex: 1; }`
3. Style footer:
    - Dark background (#2c3e50)
    - White text
    - Proper padding and content organization
4. Center footer content with max-width

**🎯 Learning Focus:** Full-height layouts, sticky footer, flexbox

### Step 7: Responsive Design

**Goal:** Make the site work on all screen sizes

1. Add media queries:
    - Tablet (768px and below)
    - Mobile (480px and below)
2. Responsive navigation:
    - Stack navigation vertically on mobile
    - Adjust gaps and padding
3. Responsive typography:
    - Smaller font sizes on mobile
    - Adjust hero section padding
4. Content adjustments:
    - Reduce margins and padding
    - Optimize for touch interaction

**🎯 Learning Focus:** Media queries, mobile-first design, responsive patterns

### Step 8: Polish and Interactive Effects

**Goal:** Add professional finishing touches

1. Enhance hover effects:
    - Logo scale effect
    - Navigation link animations
    - Content section lift effect
2. Add CSS animations:
    - Hero content fade-in animation
    - Gradient background animation
3. Improve user experience:
    - Smooth scrolling
    - Enhanced transitions
    - Professional polish

**🎯 Learning Focus:** CSS animations, transforms, user experience

---

## Design Guidelines

### Color Palette

-   **Primary:** #3498db (Blue)
-   **Dark:** #2c3e50 (Dark Blue-Gray)
-   **Text:** #333 (Dark Gray)
-   **Light Text:** #555 (Medium Gray)
-   **Background:** #f8f9fa (Light Gray)
-   **White:** #ffffff

### Typography

-   **Font Family:** Arial, sans-serif
-   **Headings:** Bold, dark colors
-   **Body Text:** Regular weight, good contrast
-   **Line Height:** 1.6-1.8 for readability

### Spacing

-   Use consistent spacing (20px, 40px, 60px)
-   Maintain visual rhythm
-   Ensure touch-friendly spacing on mobile

---

## 💡 Tips for Success

1. **Start Simple:** Build step by step, don't try to do everything at once
2. **Test Often:** Check your work in the browser frequently
3. **Use Dev Tools:** Learn to inspect and debug your CSS
4. **Be Consistent:** Use consistent naming and spacing
5. **Comment Your Code:** Add comments to explain complex CSS
6. **Ask Questions:** Don't hesitate to ask for help when stuck

---

**Good luck with your portfolio project! 🎉**

Remember: The goal is learning, not perfection. Focus on understanding each concept as you build.

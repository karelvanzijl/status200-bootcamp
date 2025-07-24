# CSS Review & Practice Day

## 1. Quick Quiz

-   Review of HTML structure and semantic elements
-   CSS linking and external stylesheets
-   Selectors and classes (tag, class, ID selectors)
-   Box model fundamentals and calculations
-   Positioning concepts and document flow
-   Flexbox basics and main/cross axis alignment

📖 [Quick Quiz](./01-quick-quiz.md)

## 2. Live Coding Session

-   Building a webpage from scratch step-by-step
-   Semantic HTML structure with proper elements
-   CSS linking and troubleshooting common issues
-   Adding images, navigation, and content sections
-   Hands-on practice with real-time problem solving

📖 [Live Coding Guide](02-live-coding.md)

## 3. Box Model & Selectors

-   Interactive debugging exercises with box model calculations
-   Understanding content-box vs border-box sizing
-   Pseudo-class selectors and hover effects
-   Descendant selectors and targeting specific elements
-   Multiple selector patterns and CSS specificity
-   DevTools exploration for visual debugging

📖 [Box Model & Selectors Challenges](03-box-model-and-selectors.md)

## 4. Positioning & Flexbox Recap

-   Live demonstration of positioning vs flexbox
-   Document flow impact with different position values
-   Flexbox container properties in action
-   justify-content, align-items, and flex-direction
-   Hands-on experiments with A, B, C layout examples

📖 [Positioning & Flexbox Experiments](04-positioning-and-flexbox.md)

## 5. Flexbox Froggy Game

-   Interactive learning through gamification
-   Levels 1-13 focusing on flex container properties
-   Collaborative learning with peer assistance
-   Strategic discussion breaks for concept reinforcement
-   Fun way to solidify flexbox understanding

📖 [Flexbox Froggy Guide](05-flex-froggy-game.md)

## 6. Media Queries & Responsive Design

-   Introduction to responsive web design concepts
-   Media query syntax and common breakpoints
-   Mobile-first vs desktop-first approaches
-   Practical examples with navigation and grid layouts
-   Advanced features like orientation and hover queries

📖 [Media Queries & Responsive Design](06-media-queries.md)

---

## Quick Reference

### Box Model Calculation

```css
/* content-box (default) */
.element {
    width: 200px; /* content only */
    padding: 20px; /* +40px total */
    border: 5px solid; /* +10px total */
    /* Total element width: 250px */
}

/* border-box */
.element {
    box-sizing: border-box;
    width: 200px; /* includes padding & border */
    padding: 20px; /* content shrinks to fit */
    border: 5px solid; /* content shrinks to fit */
    /* Total element width: 200px */
}
```

### Flexbox Essentials

```css
.container {
    display: flex;
    justify-content: space-between; /* main axis */
    align-items: center; /* cross axis */
    flex-direction: row; /* default */
}
```

### Basic Media Query

```css
/* Mobile first approach */
.container {
    width: 100%; /* mobile base */
    padding: 10px;
}

@media screen and (min-width: 768px) {
    .container {
        width: 750px; /* tablet and up */
        padding: 20px;
    }
}
```

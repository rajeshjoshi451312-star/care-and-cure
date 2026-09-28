# Toolbox

A phone-style home screen of square app icons. Tap one to open it in a window on the same page.
Apps: Calendar 2026, To-do, Stopwatch, Notes.

## Run in VS Code
1. File > Open Folder... and choose the `toolbox` folder.
2. Install the **Live Server** extension (Ritwick Dey).
3. Right-click `index.html` > **Open with Live Server**.
(Or just double-click `index.html`. No build step or server is needed.)

## Structure
```
toolbox/
  index.html        home screen tiles + one <section class="win"> per app
  css/styles.css    all styles (theme colours are CSS variables at the top)
  js/main.js        opens/closes app windows
  js/calendar.js    Calendar 2026
  js/todo.js        To-do list
  js/stopwatch.js   Stopwatch
  js/notes.js       Notes + word count
```
Each JS file is wrapped in its own function `(function () { ... })();`, so
variables in one app never clash with another app or another project.

## Add a new app
1. In `index.html`, add a tile inside `#grid`:
   `<button class="tile" data-app="myapp" style="--c:#0a7ea4"><i>🔧</i>My App</button>`
2. Add a window: `<section class="win" id="w-myapp" style="--c:#0a7ea4" hidden aria-label="My App">`
   with a `.bar` (title + `<button data-close>Close</button>`) and a `.body`.
3. Create `js/myapp.js` (copy the wrapper from any other app file) and add
   `<script src="js/myapp.js"></script>` before `main.js` in `index.html`.

## Merging with another project later
- Copy the `css/` and `js/` files you need and add their `<link>` / `<script>` lines to the other page.
- If the other project already uses class names like `.tile`, `.win`, `.bar`, `.body` or `.row`,
  rename them (VS Code: select the name, press F2) or prefix them, e.g. `tb-tile`, `tb-win`.
- Element ids (`w-cal`, `ti`, `sg`, ...) must be unique on the page. Search the other file for clashes first.
- `main.js` only handles the `.tile` / `.win` pattern, so any new app that follows it works with no changes.

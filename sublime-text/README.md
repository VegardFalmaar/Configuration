Setup
====

The files

- keybindings.sublime-keymap
- Preferences.sublime-settings

should be symlinked according to the instructions in each file.

The directories Dictionaries and Snippets should be symlinked with

- `ln -s ~/Git/Configuration/sublime-text/Dictionaries ~/.config/sublime-text/Packages/Dictionaries`
- `ln -s ~/Git/Configuration/sublime-text/Snippets ~/.config/sublime-text/Packages/Snippets`


Key Bindings
====


LaTeX specific
----

- Clean build dir.: `Ctrl + L -- Backspace`
- Change surrounding env: `Ctrl + l -- Ctrl + Shift + N`
- Toggle * in surrounding env: `Ctrl + l -- Ctrl + Shift + 8`


Snippets
====

The following snippets are created.
Custom snippets all start with "s" to avoid collisions with built-in keywords.

Snippets are expanded with `Shift + Enter`.


Text Mode
----

- Insert figure: "sfig"
- Inline equation: "sin"
- Block equation: "eq"
- Align env.: "sal"


Math Mode
----

- Fraction: "sfr"

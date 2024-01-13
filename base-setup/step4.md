XFCE Manual Settings
====


Window manager
----

Numix


Window Manager, Keyboard
----

Go through the desired keybindings for window
tiling. To ensure that keybindings work the old keybinding should be removed
("cleared") before a new one is set. Do not simply overwrite the old one.


Keyboard, Application Shortcuts
----

Edit launch of file manager, email client, and web browser.

Bind command "spotify" to Super + 4.

To move windows between screens, current solution is movescreen by calandoa on
GitHub. Requires the package wmctrl from apt, and the shebang usually needs
editing to give the correct name of a Python executable.

To turn Caps Lock into Left Ctrl Replace the XKBOPTIONS definition in
`/etc/default/keyboard` with
```sh
XKBOPTIONS="ctrl:nocaps"
```
This affects all users on the system.

This won't affect your current session (you have to restart X11),
so you can run this command line to change things until then:
```sh
setxkbmap -option ctrl:nocaps
```

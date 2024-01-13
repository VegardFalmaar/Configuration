Step 2
====

Manual installs
----

- Anaconda
- Dropbox
- Sublime Text (required for symlinks in next step)
    - [Install Package Control](https://packagecontrol.io/installation)
    - [Install LaTeXTools](https://latextools.readthedocs.io/en/latest/install/#installation)
    - Run the `LaTeXTools: Reset user settings to default` command from the
    Command Palette to get an editable copy of the settings file.
    - Open the LaTeXTools user settings file and edit the `texpath` variable
    *under Linux* to include the directory that contains pdflatex & friends.
    Found easily by `which pdflatex`.
- Spotify
- Zoom
- Teams
- Discord


SSH
----

Set up an SSH key and upload it to GitHub. This is required to clone even
public repositories.


Graphics drivers
----

Check Ubuntu's
[Nvidia Driver
Guide](https://ubuntu.com/server/docs/nvidia-drivers-installation)
for instructions on how to install the correct Nvidia driver.

Check with
[Nvidia](https://www.nvidia.com/download/index.aspx)
what version should be installed.
Check the version currently installed with
```sh
cat /proc/driver/nvidia/version
```
as per the Ubuntu guide.

Get Steam and play some games!

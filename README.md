# maxima
Boost your maximized apps screen realstate

This is a little indicator with the normal elementary window controls.

When clicking on toggle maximize it will maximize or unmaximize the current active window. As if you had used the super + upArrow keys.

In fact that is precisely what happens, the app emulates those key presses.

### Why I did this?

I recently saw this reddit post. https://www.reddit.com/r/elementaryos/comments/8tsa52/can_i_do_this_in_eos/

Yup thats why.

While this app does not do the same a gnome extension and provide the window controls in wingpannel.

It atleast allows the maximize toggle for the current active window and a close button.

I promisse to do my best to make it better in the near future :)

### how to build?

Clone the repo and have meson installed.

inside the project folder just issue:
 - `meson build`
 - `ninja`
 - `sudo ninja install`

to uninstall:
 - `sudo ninja uninstall`


### Depends

This app depends on 2 other packages:
 - maximus
 - xdotool

If you are building this then you should have maximus running on the bg(os like you can read on the linked post run it at startup)

if the indicator is not running just call it with `com.github.fernandofreamunde.maxima` I would also advise in starting it on the startup of your system :)
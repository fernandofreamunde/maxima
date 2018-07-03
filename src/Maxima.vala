// maximus -m at startup
// xdotool

using AppIndicator;

public class Maxima {
    public static int main(string[] args) {
        Gtk.init(ref args);

        var indicator = new Indicator("Maxima", "com.github.fernandofreamunde.maxima", IndicatorCategory.SYSTEM_SERVICES);

        indicator.set_status(IndicatorStatus.ACTIVE);
        // indicator.set_attention_icon("window-close");

        var menu = new Gtk.Menu();

        var maximize_toggle_menuItem = new Gtk.MenuItem.with_label(_("Toggle Maximize"));
        maximize_toggle_menuItem.activate.connect(() => {
            string command = "xdotool key super+Up";
            AppInfo.create_from_commandline (command, null, AppInfoCreateFlags.NONE).launch (null, null);
            info("Toggle Maximize\n");
        });
        maximize_toggle_menuItem.show();
        menu.append(maximize_toggle_menuItem);

        var close_menuItem = new Gtk.MenuItem.with_label(_("Close"));
        close_menuItem.show();
        close_menuItem.activate.connect(() => {
            string command = "xdotool key ctrl+q";
            AppInfo.create_from_commandline (command, null, AppInfoCreateFlags.NONE).launch (null, null);
            info("Close\n");
        });
        menu.append(close_menuItem);

        indicator.set_menu(menu);

        Gtk.main();
        return 0;
    }
}

{
    files = {
        "generated/gio/DBusInterfaceSkeleton.d"
    },
    values = {
        "/usr/bin/dmd",
        {
            "-m64",
            "-fPIC",
            "-I/usr/local/include/d/gtk4d",
            "-Igenerated",
            "-I/usr/include/libmount",
            "-I/usr/include/blkid",
            "-I/usr/include/glib-2.0",
            "-I/usr/lib/x86_64-linux-gnu/glib-2.0/include",
            "-I/usr/include/gio-unix-2.0"
        }
    }
}
{
    files = {
        "generated/harfbuzz/shape_plan_t.d"
    },
    values = {
        "/usr/bin/dmd",
        {
            "-m64",
            "-fPIC",
            "-I/usr/local/include/d/gtk4d",
            "-Igenerated",
            "-I/usr/include/harfbuzz",
            "-I/usr/include/freetype2",
            "-I/usr/include/libpng16",
            "-I/usr/include/glib-2.0",
            "-I/usr/lib/x86_64-linux-gnu/glib-2.0/include"
        }
    }
}
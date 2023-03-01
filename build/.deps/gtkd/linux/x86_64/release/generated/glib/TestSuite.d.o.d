{
    files = {
        "generated/glib/TestSuite.d"
    },
    values = {
        "/usr/bin/dmd",
        {
            "-m64",
            "-fPIC",
            "-I/usr/local/include/d/gtk4d",
            "-Igenerated"
        }
    }
}
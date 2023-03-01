{
    files = {
        "src/app.d"
    },
    values = {
        "/usr/bin/dmd",
        {
            "-m64",
            "-I/usr/local/include/d/gtk4d",
            "-Igenerated"
        }
    }
}
{
    files = {
        "build/.objs/rsvg/linux/x86_64/release/generated/rsvg/Handle.d.o",
        "build/.objs/rsvg/linux/x86_64/release/generated/rsvg/c/types.d.o",
        "build/.objs/rsvg/linux/x86_64/release/generated/rsvg/c/functions.d.o"
    },
    values = {
        "/usr/bin/dmd",
        {
            "-shared",
            "-fPIC",
            "-m64",
            "-L-L/usr/local/lib/x86_64-linux-gnu",
            "-L-Lbuild/linux/x86_64/release",
            "-L-lgtkd"
        }
    }
}
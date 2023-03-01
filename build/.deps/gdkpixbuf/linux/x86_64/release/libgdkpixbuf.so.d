{
    files = {
        "build/.objs/gdkpixbuf/linux/x86_64/release/generated/gdkpixbuf/PixbufFormat.d.o",
        "build/.objs/gdkpixbuf/linux/x86_64/release/generated/gdkpixbuf/PixbufSimpleAnimation.d.o",
        "build/.objs/gdkpixbuf/linux/x86_64/release/generated/gdkpixbuf/Pixbuf.d.o",
        "build/.objs/gdkpixbuf/linux/x86_64/release/generated/gdkpixbuf/Pixdata.d.o",
        "build/.objs/gdkpixbuf/linux/x86_64/release/generated/gdkpixbuf/PixbufLoader.d.o",
        "build/.objs/gdkpixbuf/linux/x86_64/release/generated/gdkpixbuf/PixbufNonAnim.d.o",
        "build/.objs/gdkpixbuf/linux/x86_64/release/generated/gdkpixbuf/PixbufAnimation.d.o",
        "build/.objs/gdkpixbuf/linux/x86_64/release/generated/gdkpixbuf/PixbufAnimationIter.d.o",
        "build/.objs/gdkpixbuf/linux/x86_64/release/generated/gdkpixbuf/c/types.d.o",
        "build/.objs/gdkpixbuf/linux/x86_64/release/generated/gdkpixbuf/c/functions.d.o"
    },
    values = {
        "/usr/bin/dmd",
        {
            "-shared",
            "-fPIC",
            "-m64",
            "-L-L/usr/local/lib/x86_64-linux-gnu",
            "-L-Lbuild/linux/x86_64/release",
            "-L-lgdk_pixbuf-2.0",
            "-L-lgobject-2.0",
            "-L-lglib-2.0",
            "-L-lgtkd"
        }
    }
}
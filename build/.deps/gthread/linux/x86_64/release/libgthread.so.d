{
    files = {
        "build/.objs/gthread/linux/x86_64/release/generated/gthread/Private.d.o",
        "build/.objs/gthread/linux/x86_64/release/generated/gthread/RecMutex.d.o",
        "build/.objs/gthread/linux/x86_64/release/generated/gthread/Cond.d.o",
        "build/.objs/gthread/linux/x86_64/release/generated/gthread/Once.d.o",
        "build/.objs/gthread/linux/x86_64/release/generated/gthread/Thread.d.o",
        "build/.objs/gthread/linux/x86_64/release/generated/gthread/RWLock.d.o",
        "build/.objs/gthread/linux/x86_64/release/generated/gthread/Mutex.d.o",
        "build/.objs/gthread/linux/x86_64/release/generated/gthread/c/types.d.o",
        "build/.objs/gthread/linux/x86_64/release/generated/gthread/c/functions.d.o"
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
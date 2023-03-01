-- set project name
set_project("Gtk-d")
set_version("1.0.4")

add_rules("mode.debug")
add_includedirs("/usr/local/include/d/gtk4d", "generated" )

add_linkdirs("/usr/local/lib/x86_64-linux-gnu")
add_rpathdirs("/usr/local/lib/x86_64-linux-gnu")

add_requires("apt::libgtk-4-dev", {alias = "aptgtk"})
add_requires("apt::libglib2.0-dev", {alias = "aptglib"})
add_requires("apt::libcairo2-dev", {alias="aptcairo"})
add_requires("apt::libgraphene-1.0-dev", {alias="aptgraphene"})
add_requires("apt::libgdk-pixbuf-2.0-dev", {alias="aptgdkpixbuf"})
add_requires("apt::libadwaita-1-dev", {alias="aptadw"})
add_requires("apt::libpango1.0-dev", {alias="aptpango"})
add_requires("apt::libcairo2-dev", {alias="aptcairo"})
add_requires("apt::libharfbuzz-dev", {alias="aptharfbuzz"})


target('gtkd')
    set_kind("shared")
    add_files("generated/glib/*.d", "generated/glib/c/*.d")
    

target("glib")
    set_kind("shared")
    add_deps("gtkd")
    add_files("generated/glib/*.d", "generated/glib/c/*.d")
    add_packages("aptglib")

target("cairo")
    set_kind("shared")
    add_deps("gtkd")
    add_packages("aptcairo")
    add_files("generated/cairo/*.d", "generated/cairo/c/*.d")

target("harfbuzz")
    set_kind("shared")
    add_deps("gtkd")
    add_packages("aptharfbuzz")
    add_files("generated/harfbuzz/*.d", "generated/harfbuzz/c/*.d")

target("pango")
    set_kind("shared")
    add_deps("gtkd")
    add_packages("aptpango")
    add_files("generated/pango/*.d", "generated/pango/c/*.d")

target("gio")
    set_kind("shared")
    add_deps("gtkd")
    add_packages("aptglib")
    add_files("generated/gio/*.d", "generated/gio/c/*.d")

target("gdkpixbuf")
    set_kind("shared")
    add_deps("gtkd")
    add_packages("aptgdkpixbuf")
    add_files("generated/gdkpixbuf/*.d", "generated/gdkpixbuf/c/*.d")

target("atk")
    set_kind("shared")
    add_deps("gtkd")
    add_files("generated/atk/*.d", "generated/atk/c/*.d")

target("gdk")
    set_kind("shared")
    add_deps("gtkd")
    add_files("generated/gdk/*.d", "generated/gdk/c/*.d")

target("graphene")
    set_kind("shared")
    add_deps("gtkd")
    add_files("generated/graphene/*.d", "generated/graphene/c/*.d")
    add_packages("aptgraphene")

target("gobject")
    set_kind("shared")
    add_deps("gtkd")
    add_files("generated/gobject/*.d", "generated/gobject/c/*.d")

target("gsk")
    set_kind("shared")
    add_deps("gtkd")
    add_files("generated/gsk/*.d", "generated/gsk/c/*.d")

target("gtk")
    set_kind("shared")
    add_deps("gtkd")
    add_packages("aptgtk")
    add_files("generated/gtk/*.d", "generated/gtk/c/*.d")

target("rsvg")
    set_kind("shared")
    add_deps("gtkd")
    add_files("generated/rsvg/*.d", "generated/rsvg/c/*.d")

target("shumate")
    set_kind("shared")
    add_deps("gtkd")
    add_files("generated/shumate/*.d", "generated/shumate/c/*.d")

target("soup")
    set_kind("shared")
    add_deps("gtkd")
    add_files("generated/soup/*.d", "generated/soup/c/*.d")

target("sourceview")
    set_kind("shared")
    add_deps("gtkd")
    add_files("generated/sourceview/*.d", "generated/sourceview/c/*.d")

target("gthread")
    set_kind("shared")
    add_deps("gtkd")
    add_files("generated/gthread/*.d", "generated/gthread/c/*.d")

target("adw")
    set_kind("shared")
    add_deps("gtkd")
    add_packages("aptadw")
    add_files("generated/adw/*.d", "generated/adw/c/*.d")

target("testapp2")
    set_kind("binary")
    add_deps("gtk", "gobject", "gio", "glib", "gdk", "gdkpixbuf", "gsk", "cairo", "harfbuzz", "graphene", "pango", "gtkd")
    add_files("src/app.d")


--
-- If you want to known more usage about xmake, please see https://xmake.io
--
-- ## FAQ
--
-- You can enter the project directory firstly before building project.
--
--   $ cd projectdir
--
-- 1. How to build project?
--
--   $ xmake
--
-- 2. How to configure project?
--
--   $ xmake f -p [macosx|linux|iphoneos ..] -a [x86_64|i386|arm64 ..] -m [debug|release]
--
-- 3. Where is the build output directory?
--
--   The default output directory is `./build` and you can configure the output directory.
--
--   $ xmake f -o outputdir
--   $ xmake
--
-- 4. How to run and debug target after building project?
--
--   $ xmake run [targetname]
--   $ xmake run -d [targetname]
--
-- 5. How to install target to the system directory or other output directory?
--
--   $ xmake install
--   $ xmake install -o installdir
--
-- 6. Add some frequently-used compilation flags in xmake.lua
--
-- @code
--    -- add debug and release modes
--    add_rules("mode.debug", "mode.release")
--
--    -- add macro defination
--    add_defines("NDEBUG", "_GNU_SOURCE=1")
--
--    -- set warning all as error
--    set_warnings("all", "error")
--
--    -- set language: c99, c++11
--    set_languages("c99", "c++11")
--
--    -- set optimization: none, faster, fastest, smallest
--    set_optimize("fastest")
--
--    -- add include search directories
--    add_includedirs("/usr/include", "/usr/local/include")
--
--    -- add link libraries and search directories
--    add_links("tbox")
--    add_linkdirs("/usr/local/lib", "/usr/lib")
--
--    -- add system link libraries
--    add_syslinks("z", "pthread")
--
--    -- add compilation and link flags
--    add_cxflags("-stdnolib", "-fno-strict-aliasing")
--    add_ldflags("-L/usr/local/lib", "-lpthread", {force = true})
--
-- @endcode
--


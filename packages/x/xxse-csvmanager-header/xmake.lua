package("xxse-csvmanager-header")
    set_kind("library", {headeronly = true})
    set_description("The xxse-csvmanager-header package")
    set_license("GPL-3.0")
    add_deps("rapidcsv")

    add_urls("https://github.com/typeryougishiki/xxse-CsvManager-header.git")

    on_install(function (package)
        import("package.tools.xmake").install(package, {})
    end)

    on_test(function (package)
        -- TODO check includes and interfaces
        -- assert(package:has_cfuncs("foo", {includes = "foo.h"})
    end)

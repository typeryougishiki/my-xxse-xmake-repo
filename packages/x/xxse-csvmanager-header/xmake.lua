package("xxse-csvmanager-header")
    set_kind("library", {headeronly = true})
    set_description("The xxse-csvmanager-header package")
    set_license("GPL-3.0")
    add_deps("rapidcsv")

    add_urls("https://github.com/typeryougishiki/xxse-CsvManager-header.git")
    add_versions("0.1.0", "bfa1f755c60716b8478ae5f77ab177d72331dea5")

    on_install(function (package)
        local configs = {}
        if package:config("shared") then
            configs.kind = "shared"
        end
        import("package.tools.xmake").install(package, configs)
    end)

    on_test(function (package)
        -- TODO check includes and interfaces
        -- assert(package:has_cfuncs("foo", {includes = "foo.h"})
    end)

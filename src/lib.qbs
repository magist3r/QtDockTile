import qbs.base 1.0

Product {
    name: "qtdocktile"

    property string versionMajor: '1'
    property string versionMinor: '0'
    property string versionRelease: '0'
    property string version: versionMajor + '.' + versionMinor + '.' + versionRelease

    destination: "lib"
    type: ["dynamiclibrary", "installed_content"]
    cpp.defines: "QT_DOCKTILE_LIB"

    Depends { name: "cpp" }
    Depends { name: "Qt"; submodules: ["core", "gui", "widgets"] }

    files: [
        "lib/qtdockprovider.h",
        "lib/qtdocktile_global.h",
        "lib/qtdocktile.h",
        "lib/pluginloader_p.h",
        "lib/qtdockmanager_p.h",
        "lib/qtdocktile_p.h",
        "lib/pluginloader.cpp",
        "lib/qtdockmanager.cpp",
        "lib/qtdockprovider.cpp",
        "lib/qtdocktile.cpp"
    ]

    Group {
        qbs.installDir: "include/QtDockTile"
        fileTags: ["install"]
        files: [
            "lib/qtdockprovider.h",
            "lib/qtdocktile_global.h",
            "lib/qtdocktile.h",
        ]
    }
}

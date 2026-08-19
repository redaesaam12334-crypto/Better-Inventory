add_rules("mode.debug", "mode.release")

add_requires("amethystapi")

target("Better-Inventory")
    set_kind("shared")
    set_languages("c++20")
    
    add_deps("amethystapi")
    add_files("src/**.cpp")
    add_includedirs("src")

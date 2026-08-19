add_rules("mode.debug", "mode.release")

target("Better-Inventory")
    set_kind("shared")
    set_languages("c++20")
    
    add_includedirs(
        "src", 
        "AmethystAPI/include", 
        "AmethystAPI/src", 
        "AmethystAPI/vendor"
    )
    add_files("src/**.cpp")
    
    before_build(function (target)
        os.exec("xmake f --yes")
    end)

    if is_plat("windows") then
        add_cxflags("/EHsc", "/Zc:__cplusplus")
    end

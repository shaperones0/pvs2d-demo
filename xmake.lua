add_rules("mode.debug", "mode.release")
add_requires("raylib")

target("demo")
    set_kind("binary")
    add_files("demo/demo.c")
    add_deps("pvs2d")
    add_packages("raylib")
    after_build(function(target) 
        -- os.run("copy resources\\* %s", target:targetdir())
        -- os.execute("cd")
        -- io.popen("cd")
        print(os.run("afterbuild.bat %s", target:targetdir()))
    end)

includes("libpvs2d")
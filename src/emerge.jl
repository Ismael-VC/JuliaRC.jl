export emerge


function recompile_packages()
    for pkg in keys(Pkg.installed())
        try
            info("Compiling: $pkg")
            eval(Expr(:toplevel, Expr(:using, Symbol(pkg))))
            println(SEPARATOR)
        catch err
            warn("Unable to precompile: $pkg")
            warn(err)
            println(SEPARATOR)
        end
    end
end

function update_winrpm()
    @static if is_windows()
        @eval using WinRPM
        WinRPM.update()
    end
end

# include(joinpath(JULIA_HOME, Base.DATAROOTDIR, "julia", "build_sysimg.jl"))

#=
function rebuild_userimg()
    img_path = joinpath(
        homedir(),
        ".julia",
        "v" * string(VERSION)[1:3],
        "userimg"
    )
    build_sysimg(
        img_path,
        "native",
        joinpath(homedir(), "userimg.jl"),
        force = true
    )
end
=#

function emerge()
    tic()
    Pkg.update()
    update_winrpm()
    Pkg.build()
    recompile_packages()
    # rebuild_userimg()
    toc()
end

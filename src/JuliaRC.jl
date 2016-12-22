module JuliaRC

source_files = [
    "constants.jl",
    "environment.jl",
    "aliases.jl",
    "helpers.jl",
    "greedy_banner.jl",
    "macros.jl",
    "emerge.jl",
    "repl.jl",
    "setup.jl",
]

foreach(include, source_files)

end # module

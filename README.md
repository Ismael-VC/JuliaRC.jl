# JuliaRC

[![Build Status](https://travis-ci.org/Ismael-VC/JuliaRC.jl.svg?branch=master)](https://travis-ci.org/Ismael-VC/JuliaRC.jl)

[![Coverage Status](https://coveralls.io/repos/Ismael-VC/JuliaRC.jl/badge.svg?branch=master&service=github)](https://coveralls.io/github/Ismael-VC/JuliaRC.jl?branch=master)

[![codecov.io](http://codecov.io/github/Ismael-VC/JuliaRC.jl/coverage.svg?branch=master)](http://codecov.io/github/Ismael-VC/JuliaRC.jl?branch=master)

## Installation

```julia
julia> repositories = [
           "https://github.com/KristofferC/Tokenize.jl",
           "https://github.com/KristofferC/OhMyREPL.jl",
           "https://github.com/Ismael-VC/JuliaRC.jl"
       ];

julia> foreach(Pkg.clone, repositories)                                                                                   
INFO: Initializing package repository /home/juser/.julia/v0.5                                                             
INFO: Cloning METADATA from https://github.com/JuliaLang/METADATA.jl
INFO: Cloning Tokenize from https://github.com/KristofferC/Tokenize.jl
INFO: Computing changes...
INFO: Cloning cache of Compat from https://github.com/JuliaLang/Compat.jl.git
INFO: Installing Compat v0.9.5
INFO: Package database updated
INFO: Cloning OhMyREPL from https://github.com/KristofferC/OhMyREPL.jl
INFO: Computing changes...
INFO: Cloning cache of BaseTestNext from https://github.com/JuliaCI/BaseTestNext.jl.git
INFO: Installing BaseTestNext v0.2.2
INFO: Cloning JuliaRC from https://github.com/Ismael-VC/JuliaRC.jl
INFO: Computing changes...
INFO: No packages to install, update or remove                                                                            
                                                                                                                          
julia>       
```

## Setup

* `zsh`

```bash
ismaelvc@toybox ~ % echo "alias julia='$(which julia) -q'" >> ~/.zshrc && source ~/.zshrc
```

* `cmder`

```dos
C:\Users\Ismael
λ echo julia=%JULIA_HOME%\julia.exe -q $* >> %CMDER_ROOT%\config\user-aliases.cmd && call %CMDER_ROOT%\config\user-aliases.cmd
```

## Usage

```julia
# ~/.juliarc.jl
using JuliaRC
```

## Result

```julia
C:\Users\Ismael
λ julia
               _
   _       _ _(_)_     |  By greedy hackers for greedy hackers.
  (_)     | (_) (_)    |  Documentation: http://docs.julialang.org
   _ _   _| |_  __ _   |  Type "?help" for help.
  | | | | | | |/ _' |  |
  | | |_| | | | (_| |  |  Version 0.5.0 (2016-09-19 18:14 UTC)
 _/ |\__'_|_|_|\__'_|  |  Official http://julialang.org/ release
|__/                   |  x86_64-w64-mingw32

julia>
```

# JuliaRC

[![Build Status](https://travis-ci.org/Ismael-VC/JuliaRC.jl.svg?branch=master)](https://travis-ci.org/Ismael-VC/JuliaRC.jl)

[![Coverage Status](https://coveralls.io/repos/Ismael-VC/JuliaRC.jl/badge.svg?branch=master&service=github)](https://coveralls.io/github/Ismael-VC/JuliaRC.jl?branch=master)

[![codecov.io](http://codecov.io/github/Ismael-VC/JuliaRC.jl/coverage.svg?branch=master)](http://codecov.io/github/Ismael-VC/JuliaRC.jl?branch=master)

## Installation

```julia
julia> Pkg.clone("https://github.com/Ismael-VC/JuliaRC.jl.git")
```

## Setup

* `zsh`

```bash
$ echo "alias julia='/path/to/julia -q'" >> ~/.zshrc && source ~/.zshrc
```

* `cmder`

```cmd
echo julia=C:\path\to\julia -q $* >> C:\Path\To\Cmder\config\user-aliases.cmd    # restart shell
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

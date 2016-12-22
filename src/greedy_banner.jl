function greedy_banner(io::IO = STDOUT)
    GIT_VERSION_INFO = Base.GIT_VERSION_INFO
    TAGGED_RELEASE_BANNER = Base.TAGGED_RELEASE_BANNER
    have_color = Base.have_color
    if GIT_VERSION_INFO.tagged_commit
        commit_string = TAGGED_RELEASE_BANNER
    elseif GIT_VERSION_INFO.commit == ""
        commit_string = ""
    else
        days = Int(floor((ccall(:jl_clock_now, Float64, ()) - GIT_VERSION_INFO.fork_master_timestamp) / (60 * 60 * 24)))
        days = max(0, days)
        unit = days == 1 ? "day" : "days"
        distance = GIT_VERSION_INFO.fork_master_distance
        commit = GIT_VERSION_INFO.commit_short

        if distance == 0
            commit_string = "Commit $(commit) ($(days) $(unit) old master)"
        else
            branch = GIT_VERSION_INFO.branch
            commit_string = "$(branch)/$(commit) (fork: $(distance) commits, $(days) $(unit))"
        end
    end
    commit_date = GIT_VERSION_INFO.date_string != "" ? " ($(GIT_VERSION_INFO.date_string))": ""

    if have_color
        tx = "\033[0m\033[1m" # text
        jl = "\033[0m\033[1m" # julia
        d1 = "\033[34m" # first dot
        d2 = "\033[31m" # second dot
        d3 = "\033[32m" # third dot
        d4 = "\033[35m" # fourth dot

        print(io,"""
        \033[1m               $(d3)_$(tx)
           $(d1)_$(tx)       $(jl)_$(tx) $(d2)_$(d3)(_)$(d4)_$(tx)     |  By greedy hackers for greedy hackers.
          $(d1)(_)$(jl)     | $(d2)(_)$(tx) $(d4)(_)$(tx)    |  Documentation: http://docs.julialang.org
           $(jl)_ _   _| |_  __ _$(tx)   |  Type \"?help\" for help.
          $(jl)| | | | | | |/ _' |$(tx)  |
          $(jl)| | |_| | | | (_| |$(tx)  |  Version $(VERSION)$(commit_date)
         $(jl)_/ |\\__'_|_|_|\\__'_|$(tx)  |  $(commit_string)
        $(jl)|__/$(tx)                   |  $(Sys.MACHINE)
        \033[0m
        """)
    else
        print(io,"""
                       _
           _       _ _(_)_     |  By greedy hackers for greedy hackers.
          (_)     | (_) (_)    |  Documentation: http://docs.julialang.org
           _ _   _| |_  __ _   |  Type \"?help\" for help.
          | | | | | | |/ _' |  |
          | | |_| | | | (_| |  |  Version $(VERSION)$(commit_date)
         _/ |\\__'_|_|_|\\__'_|  |  $(commit_string)
        |__/                   |  $(Sys.MACHINE)

        """)
    end
end

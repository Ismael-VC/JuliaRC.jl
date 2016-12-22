# Create sticky REPL functions for shell and help modes
const REPL_MODES_METADATA = @compat Dict(
    :shell => 2,
    :help => 3
)

for (repl_mode, mode_number) in REPL_MODES_METADATA
    sticky_mode = @compat Symbol(:sticky_, repl_mode, :_mode)
    @eval function $(sticky_mode)(enable::Bool = true)
        Base.active_repl.interface.modes[$mode_number].sticky = enable
    end
end

repl_prompt(prompt::String = "julia> ") = Base.active_repl.interface.modes[1].prompt = prompt
function setup()
    @async while true
        if isdefined(Base,:active_repl)
            greedy_banner()
            @sync begin
                @async sticky_shell_mode()
                @async sticky_help_mode()
                # repl_prompt("J> ")


                # versions 0.4.x, 0.5.x and 0.6.x
                if v"0.4" <= VERSION < v"0.7-"
                    @async begin

                        if v"0.3" <= VERSION < v"0.5-"
                            # enable_autocomplete_brackets(false)
                        end
                    end
                end

                # Only 0.4.x
                if v"0.4" <= VERSION < v"0.5-"
                    @async begin
                        @eval begin
                            using LispREPL, LispSyntax
                            using Lazy: @>, @>>
                        end
                        LispREPL.initrepl(Base.active_repl)
                    end
                end

                # Only 0.5.x
                if v"0.5" <= VERSION < v"0.6-"
                    # @async @eval using Cxx
                end
            end

            break
        else
            sleep(0.001)
        end
    end

    #=
    if VERSION > v"0.4-"
    	const marcoexpand_keys = Dict{Any,Any}(
            "^I" => function (s, o...)
                if !isempty(s)
                    line = parse(Base.LineEdit.input_string(s))
                    s.kill_buffer=Base.LineEdit.input_string(s)
                    Base.LineEdit.edit_clear(s)
                    Base.LineEdit.edit_insert(s,string(macroexpand(line)))
                end
            end,
            "^O" => function(s, o...)
           	    Base.LineEdit.edit_clear(s)
           	    Base.LineEdit.edit_insert(Base.LineEdit.buffer(s),s.kill_buffer)
           	    Base.LineEdit.refresh_line(s)
           	end
        )

    	function customize_keys(repl)
          	repl.interface = Base.REPL.setup_interface(repl; extra_repl_keymap = marcoexpand_keys)
    	end

    	atreplinit(customize_keys)
    end
    =#

    #cd()
    push!(LOAD_PATH, pwd())
end

setup()

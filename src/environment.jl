ENV["PYTHON"] = ""
ENV["JULIA_WARN_COLOR"] = :yellow
ENV["JULIA_INFO_COLOR"] = :cyan
ENV["EDITOR"] = "atom"    # "subl"
# ENV["LISP_PROMPT_TEXT"]  = "λ ↦ "

@static if is_windows()
    ENV["VS120COMNTOOLS"] = "C:\\Program Files (x86)\\Microsoft Visual Studio 12.0"
end

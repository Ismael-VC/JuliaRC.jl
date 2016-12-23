ENV["PYTHON"] = ""
ENV["JULIA_WARN_COLOR"] = :yellow
ENV["JULIA_INFO_COLOR"] = :cyan
ENV["EDITOR"] = "C:\\Users\\Ismael\\AppData\\Local\\atom\\app-1.12.7\\atom.exe"
# ENV["LISP_PROMPT_TEXT"]  = "λ ↦ "

@static if is_windows()
    ENV["VS120COMNTOOLS"] = "C:\\Program Files (x86)\\Microsoft Visual Studio 12.0"
end

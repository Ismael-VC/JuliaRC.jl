using Base.Meta: quot, show_sexpr, isexpr

export @sexpr, @methods, @methodswith, @dump, @macroexpand


macro sexpr(expr)
    :((show_sexpr($(quot(expr))); println()))
end

macro methods(func::Symbol)
    :(methods($func))
end

# Simplify life when calling methodswith. I always do it wrong.
Base.methodswith(x, showparents::Bool=false) = methodswith(typeof(x), showparents)

macro methodswith(expr)
    :(methodswith($expr))
end

macro dump(expr)
    :(dump($(quot(expr))))
end

macro macroexpand(expr)
    :(macroexpand($(quot(expr))))
end

macro esc(sym)
    isexpr(sym, :quote) || throw(ArgumentError("expected quoted symbol")
    esc(sym.args[1])
end

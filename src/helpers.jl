# Only 0.3.x
if v"0.3" <= VERSION < v"0.4-"
    quot(expr) = Expr(:quote, expr)
else
    @eval using Base.Meta: quot, show_sexpr

    macro sexpr(expr)
        :((show_sexpr($(quot(expr))); println()))
    end
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
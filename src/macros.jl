macro comment(expr) end
macro %(expr) end

@eval begin
    "@import Foo as f"
    macro $(:import)(mod::Symbol, as::Symbol, alias::Symbol)
        as ≠ :as && error("@import expected `as` got `$as`")
        Expr(:toplevel, Expr(:import, mod), :(const $alias = $mod)) |> esc
    end

    "do-when (do-while) loop"
    macro $(:do)(block, when::Symbol, condition)
        when ≠ :when && error("@do expected `when` got `$s`")
        quote
            let
                $block
                while $condition
                    $block
                end
            end
        end |> esc
    end
end

"until loop"
macro until(condition, block)
    quote
        while !$condition
            $block
        end
    end |> esc
end

macro def(name, definition)
    return quote
        macro $(esc(name))()
            esc($(quot(definition)))
        end
    end
end

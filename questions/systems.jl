using SymbolicUtils
SymbolicUtils.show_simplified[] = false
@syms x::Real y::Real z::Real

coeffs = -10:1:10 

function system(n::Int)
    
    if (n>4) || (n<=1)
        return ""
    end
    M = rand(coeffs,(n,n))
    sols = rand(coeffs,n)
    w = M*sols
    println("""{"coefficients": $M,
                "rh": $w,
                "solutions": $sols}""" )
     
    if (n==2)
        println("The system is :")
        equations = M*[x,y]
        index = 1;
        for col in equations
            println("$(col) = $(w[index])" )
            index = index+1;
        end
        return ""
    end
    if (n==3)
        println("The system is :")
        equations = M*[x,y,z]
        index = 1;
        for col in equations
            println("$(col) = $(w[index])" )
            index = index+1;
        end
        return ""
    end

end

    function getSystem(n)
    question = system(n)
    elements = 
    """
    <h2>$(n)x$(n)</h2>
    <ul>
    $(["<li>$(equation)</li>" for equation in question]...)
    </ul>
    <form></form>
    """
end

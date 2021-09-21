#exprGenerator.jl

using Calculus, SymbolicUtils, SymbolicUtils.Code
import Base.*, Base.show

@syms x f(x) df(x)

struct tabularFunction
	vals::Matrix{Int64}
	x0::Int64
	baseSym::Char
	tabularFunction(x,y)=new(rand(UnitRange(-10,10),(4,3)),x,y)
end

function Base.println(t::tabularFunction)
	println("x  $(t.baseSym)(x) $(t.baseSym)'(x) $(t.baseSym)''(x)")
	for i in 1:4
		println("$((t.x0)+i)  $(t.vals[i,:])")
	end
end

function charVector(s::String)
	v = Char[]
	for c in s
		push!(v,c)
	end
	v
end

function *(v::Vector{Char})
	s = ""
	for i in v
		s=s*i
	end
	s
end

function compose(s::String,f::String)
	v,w = charVector(s),charVector(f)
	final = Char[]

	index = 1
	
	for c in v	
		if c == 'x'
			push!(final,'(')
			for d in w
				push!(final,d)
			end
			push!(final,')')
		else
		push!(final,c)
		end
		index += 1
	end
	*(final)
end


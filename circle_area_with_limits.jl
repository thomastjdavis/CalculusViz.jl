### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : missing
        el
    end
end

# ╔═╡ d16d2b70-fe21-11ea-2b51-bf319474c8a9
using Plots

# ╔═╡ 256a2d40-fe22-11ea-1a5d-bb46637d959b
md"""
Solution to the Circle Area Derivation Projects:


1. To be revealed.
"""

# ╔═╡ 6b6bdc10-fe24-11ea-2da7-b708c0948f86
@bind n html"<input type=range>"

# ╔═╡ d1bae400-fe26-11ea-079c-c3eca8a09c6d
"n=$(n-1)"

# ╔═╡ 1a147440-fe23-11ea-0c95-9bb75706304c
begin
	tmin = 0
	tmax = 4π
	tvec = range(tmin, tmax, length = 100)
	
	plot(sin.(tvec), cos.(tvec),legend=false)
	#n=10
	svec = range(tmin,tmax/2,length=n)
	
	plot!(sin.(svec),cos.(svec))
	trig = [(0,1),(0,0),(sin(svec[2]),cos(svec[2]))]
	
	
	plot!(trig)
end


# ╔═╡ 2d17afb0-fe2a-11ea-10bf-b94e000267e8


# ╔═╡ be9ee910-fe22-11ea-1448-0d5ec4b08821
#md"""

#$$h=r\sin(\frac{\theta}{2})$$
#$$b=r\cos(\frac{\theta}{2})$$
#"""

# ╔═╡ Cell order:
# ╟─d16d2b70-fe21-11ea-2b51-bf319474c8a9
# ╟─256a2d40-fe22-11ea-1a5d-bb46637d959b
# ╟─d1bae400-fe26-11ea-079c-c3eca8a09c6d
# ╟─6b6bdc10-fe24-11ea-2da7-b708c0948f86
# ╠═1a147440-fe23-11ea-0c95-9bb75706304c
# ╠═2d17afb0-fe2a-11ea-10bf-b94e000267e8
# ╟─be9ee910-fe22-11ea-1448-0d5ec4b08821

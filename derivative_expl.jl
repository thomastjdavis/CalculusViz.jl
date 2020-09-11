### A Pluto.jl notebook ###
# v0.11.4

using Markdown
using InteractiveUtils

# ╔═╡ 96694b30-f034-11ea-1e07-f10a958db49f
md""" So far we have discussed limits in Calculus of various types, continuity, mean value theorem, etc..

In this unit we will discuss derivatives and their applications.

Given two points $(x_1,y_1), (x_2,y_2)$ we can calculate the slope $m$ between them:

$$m = \frac{y_2-y_1}{x_2-x_1}$$
"""




# ╔═╡ 6271a790-f035-11ea-116b-11e6dcef81b1
md"""We can calculate slope of linear functions, ever since we took our first Algebra course.

But what about "non-linear" fuctions?

Let's consider our friendly quadradic fuction $f(x) = x^2$.

Here's a graph:"""

# ╔═╡ 3283a680-f050-11ea-13da-6f5150506375
md"What about slope between two points on the graph?"

# ╔═╡ db616880-f052-11ea-25e3-1bc2914021fb
md"""Hmm. That doesn't look like that'll convey useful information.

What about if we look at two closer points?""" 

# ╔═╡ e76835ee-f039-11ea-002c-c5eea484adf4
using Gadfly

# ╔═╡ 621a3160-f038-11ea-007d-c7b61f010b89
begin
	p = plot((z)->z^2, -1.0,1.0)
	#push!(p, layer(x=[slider], y =[slider^2], size=[.05],color=[colorant"gold"])) 
	push!(p, Coord.cartesian(fixed=true))
end

# ╔═╡ 8d3b5ff0-f050-11ea-1d4f-173996efe68b
begin
	p1 = plot((z)->z^2, -1.0,1.0)
	push!(p1,layer((z)->(.416*z+.4583),-.5, .92))
	push!(p1, Coord.cartesian(fixed=true))
	push!(p1,Guide.title("Slope between (-0.5,.25) and (.92,.85)"))
end

# ╔═╡ 333c9510-f036-11ea-3e76-d1005102754d
begin
	p2 = plot((z)->z^2, -1.5,1.5)
	push!(p2,layer((z)->(1.6911*z-.7058),.5, 1.5))
	push!(p2, Coord.cartesian(fixed=true))
	push!(p2,Guide.title("Slope between (.75,.5625) and (.92,.85)"))
end



# ╔═╡ Cell order:
# ╟─e76835ee-f039-11ea-002c-c5eea484adf4
# ╟─96694b30-f034-11ea-1e07-f10a958db49f
# ╟─6271a790-f035-11ea-116b-11e6dcef81b1
# ╟─621a3160-f038-11ea-007d-c7b61f010b89
# ╟─3283a680-f050-11ea-13da-6f5150506375
# ╟─8d3b5ff0-f050-11ea-1d4f-173996efe68b
# ╟─db616880-f052-11ea-25e3-1bc2914021fb
# ╟─333c9510-f036-11ea-3e76-d1005102754d

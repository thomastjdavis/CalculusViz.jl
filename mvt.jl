### A Pluto.jl notebook ###
# v0.11.4

using Markdown
using InteractiveUtils

# ╔═╡ 5a0472c2-f40b-11ea-231b-a52e7382c1bc
md"""Recall the mean value theorem:

Let $f(x)$ be a function that is continuous on $[a,b]$ and differentiable on $(a,b)$.

Then there is a number $c$ in between $a,b$ such that:

$$f'(c) = \frac{f(b)-f(a)}{b-a}$$.

This means that there is a point with a derivative equal to the slope between the boundary points. 

Let's take the following function:

$$f(x) = x^3+2x-x \text{ on } [-1,2]$$"""

# ╔═╡ bc85d0e0-f40d-11ea-2344-dd5ea4b66cde
md""" By the mean value theorem:

$$\frac{f(b)-f(a)}{b-a}= \frac{(10)-(-2)}{2-(-1)} = 4 = f'(c)$$

for some $c$ in $(-1,2)$.

With some algebra and rearranging, we find 

$$c = \frac{-4+\sqrt{76}}{6}= 0.7863$$.

Graph:
"""

# ╔═╡ 40d54e00-f40b-11ea-3ddf-a39ce834ea41
using Gadfly

# ╔═╡ 54dca870-f411-11ea-1f67-ad216b5b2e49
set_default_plot_size(20cm, 15cm)

# ╔═╡ dd853160-f40c-11ea-318e-5751cdc6ffdf
begin
	p = plot((x)->(x^3+2x-x),-1,2)
	push!(p,Coord.cartesian(fixed=true))
	push!(p,Guide.title("f(x)"))
end


# ╔═╡ 5e773960-f40f-11ea-1894-0b4feb0e99e3
begin
	push!(p,layer(x=[0.7863],y=[1.2724], size=[0.25], color=[colorant"gold"]))
	push!(p,layer((x)->(4x-1.8728),0,2))
	push!(p,layer((x)->(4x+2),-1,2))
end


# ╔═╡ Cell order:
# ╟─40d54e00-f40b-11ea-3ddf-a39ce834ea41
# ╠═5a0472c2-f40b-11ea-231b-a52e7382c1bc
# ╟─54dca870-f411-11ea-1f67-ad216b5b2e49
# ╟─dd853160-f40c-11ea-318e-5751cdc6ffdf
# ╠═bc85d0e0-f40d-11ea-2344-dd5ea4b66cde
# ╠═5e773960-f40f-11ea-1894-0b4feb0e99e3

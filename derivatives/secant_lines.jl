### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# ╔═╡ bbd5a62e-fbcd-11ea-2bbd-e7be1b736f9f
using Plots

# ╔═╡ afa5cbc0-fbcc-11ea-0dd2-35821062dd18
c = 3

# ╔═╡ 59ddff8e-fbcd-11ea-1124-d308b43c24d9
acr =10

# ╔═╡ d8f55b7e-fbcc-11ea-1881-15dbeb706e20
xvars = [float(c) - i for i in 0:acr]

# ╔═╡ 1c685b10-fbcd-11ea-1ecd-75e8c03e7f87
begin
	function f(x)
		return cos(x)
	end
end

# ╔═╡ 29568700-fbcf-11ea-3096-7f18898aeba0
begin 
	function slope(xl,xr,yl,yr,x)
		m = (yr-yl)/(xr-xl)
		b = yl - m*xl
		return m*x + b
	end
end


# ╔═╡ 358ecd40-fbcd-11ea-00fe-755c43fd372e
yvals = [f(xvars[i]) for i in 1:acr]

# ╔═╡ 55799400-fbcd-11ea-05dc-85c5e87f6f63
secs = [(yvals[i]-f(c))/(xvars[i]-c) for i in 1:acr]

# ╔═╡ ae19b810-fbcd-11ea-2ee7-a9f08af0abaf
begin
	plt = plot((x)->f(x),-2c,2c, title ="Limits of secant lines at x=$c",lw=3,legend=false)
	xlabel!("x")
	ylabel!("f(x) ")
	for i in 1:acr 
		plot!((x)->slope(xvars[i],c,yvals[i],f(c),x),xvars[i]-1,c+1)
		
	end
	plt
	savefig("cos(x)-secants.png")
end


# ╔═╡ 12bbbe30-fbce-11ea-289f-ff4eeafbdcbf
cd(#= type where you want the images to save on your machine=#)

# ╔═╡ Cell order:
# ╠═bbd5a62e-fbcd-11ea-2bbd-e7be1b736f9f
# ╠═afa5cbc0-fbcc-11ea-0dd2-35821062dd18
# ╠═59ddff8e-fbcd-11ea-1124-d308b43c24d9
# ╠═d8f55b7e-fbcc-11ea-1881-15dbeb706e20
# ╠═1c685b10-fbcd-11ea-1ecd-75e8c03e7f87
# ╠═29568700-fbcf-11ea-3096-7f18898aeba0
# ╠═358ecd40-fbcd-11ea-00fe-755c43fd372e
# ╠═55799400-fbcd-11ea-05dc-85c5e87f6f63
# ╠═ae19b810-fbcd-11ea-2ee7-a9f08af0abaf
# ╠═12bbbe30-fbce-11ea-289f-ff4eeafbdcbf
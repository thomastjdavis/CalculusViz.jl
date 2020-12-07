### A Pluto.jl notebook ###
# v0.12.6

using Markdown
using InteractiveUtils

# ╔═╡ 4c2e0eae-3841-11eb-0d59-65813cee8451
using Plots, Calculus

# ╔═╡ 0a49708c-3858-11eb-0988-29a07064bace
linkURL = "https://www.desmos.com/calculator/38igphyb3r"

# ╔═╡ 78fe48b6-3841-11eb-2c0e-87abc273de4d
begin
	function f(x)
		sqrt(abs(sin(x)x^2))
	end
end

# ╔═╡ 6b582dc2-3852-11eb-0635-41b6b9ff3646
derivative(f,0)

# ╔═╡ 5311b818-3850-11eb-01b6-457d4866d0ee
begin
	
	function slope(xl,xr,yl,yr,x)
		m = (yr-yl)/(xr-xl)
		b = yl-m*xl
		m*x+b
	end
	function slope(m::Float64,y0,x0,x)
		b = y0-m*x0
		y0 + m*(x-x0)
	end
end

# ╔═╡ c7976676-3858-11eb-123d-4f645aa88c7e


# ╔═╡ 57b0a79a-384a-11eb-28e0-49ba5030094b
begin
	m = derivative(f,-5)
	f5 = f(5)
	plot(f,-5.5,-4.5,title="linear approximation at x=-5",lw=.5)
	xlabel!("x")
	ylabel!("f(x) ")
	plot!(x->slope(m,f(-5),-5,x),-5.5,-4.5)
	savefig("lin_approx1.png")
end


# ╔═╡ 23fd305a-3843-11eb-0d62-2bc677836fee
cd("/mnt/c/users/cheri/desktop/julia_Programs/Calculus/Derivatives")

# ╔═╡ 8e52f7ce-3856-11eb-0f43-a7090f42935e
show(f)

# ╔═╡ 49e94d4e-3843-11eb-37ae-6f8f0e0ef077
pwd()

# ╔═╡ Cell order:
# ╠═4c2e0eae-3841-11eb-0d59-65813cee8451
# ╠═0a49708c-3858-11eb-0988-29a07064bace
# ╠═6b582dc2-3852-11eb-0635-41b6b9ff3646
# ╠═78fe48b6-3841-11eb-2c0e-87abc273de4d
# ╠═5311b818-3850-11eb-01b6-457d4866d0ee
# ╠═c7976676-3858-11eb-123d-4f645aa88c7e
# ╠═57b0a79a-384a-11eb-28e0-49ba5030094b
# ╠═23fd305a-3843-11eb-0d62-2bc677836fee
# ╠═8e52f7ce-3856-11eb-0f43-a7090f42935e
# ╠═49e94d4e-3843-11eb-37ae-6f8f0e0ef077

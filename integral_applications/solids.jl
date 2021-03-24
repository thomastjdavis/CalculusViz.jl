using Plots

#graphs a cylindrical aprx with n planes, radius =r, height = h
function cylinder(n,r,h)
	p = plot(xlims=[-h,h],ylims=[-2*r,2*r],zlims=[-2*r,2*r],legend=false)
	x = range(0,h,length=10)
	alpha = range(0,2*pi,length=n)
	
	for theta in alpha
		if theta == alpha[end]
			break
		end
		y=r*cos(theta)*ones(length(x))
		z=r*sin(theta)*ones(length(x))
		plot!(x,y,z,seriescolor=:black)
	end
	display(p)
end

#graphs a function to be revolved, at angles theta_i in alpha
#use at least n=10,15
function PolarLines(a,b,n)

	#f is the function to revolve
	f(u) = 1+sin(u)cos(u)
	p = plot(legend=false)
	x=range(a,b,length=10)
	alpha = range(0,2*pi,length=n)
	for theta in alpha
		if theta == alpha[end]
			break
		end
		y=cos(theta)*f.(x)
		z=sin(theta)*f.(x)
		plot!(x,y,z,seriescolor=:black)
	end
	savefig(p,"fig.html")
	p
end

#graphs a function to be revolved, at vertical slices, and with PolarLines
#use at least n=10
function Rings(a,b,n,m)

	#f is the function to revolve
	f(u) = 1+sin(u)cos(u)
	q = plot([f,0],a,b)
	
	p = plot(legend=false)
	x=range(a,b,length=n)
	alpha = range(0,2*pi,length=m)
	
	
	for xi in x
		y = Float64[]
		z = Float64[]
		xp = xi*ones(m)
		for theta in alpha
			push!(y,cos(theta)*f(xi))
			push!(z,sin(theta)*f(xi))
		
		end
		plot!(p,xp,y,z,seriescolor=:black)
	
	end
	p1 = PolarLines(a,b,2*m)
	
	f = plot(
	p,p1,q,
	layout=@layout([a b;c]),
	legend=false,
	titlelocation=:left,
	bottom_margin=10px,
	window_title="Solid of revolution")
	savefig(f,"figures.html")
	f
end

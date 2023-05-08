using Calculus, Plots


#puts a semiCircle on the graph starting at x=a,y=fa, and going until x=b.
#integral is (fa+pi/2)*(b-a)
function semiCircle(a::Int,fa,b::Int)
	r = (b-a)/2.0
	x0 = (b+a)/2.0
	
	flip = rand([true false])
	if flip
		x -> fa - sqrt((r)^2-(x-(x0))^2)
	else
		x -> fa + sqrt((r)^2-(x-(x0))^2)
	end		
end

function makeLineEnd(exc)
	y = range(-5,5,length=11)
	let cond = true
		while(cond)
		fb = Int(rand(y))
		if fb != exc
			return fb
		end
		end
	end
end

#integral is line(b)*(b-a)
function line(a::Int,fa,b::Int)
	fb = makeLineEnd(fa)
	m = (fb-fa)/(b-a)
	x -> m*(x-a)+fa
end



#=need 2 things:
	1. encoded code as json storing info of the question
		to be interpreted and converted to question text
		given a code, make a question, and 
	2. a
=#

function stringIt(z)
	if z<0
		return "n$(abs(z))"
	else
		return "$z"
	end
end

function describeGraph(s::String)
	description = "The graph of f begins at (-5,0) and is"
	xPos, sPos = -5, 5
	ypos = 0
	lPos = lastindex(s)
	while(xPos<5 && sPos<lPos)
		m=1
		if s[sPos]=='L'
			
			if s[sPos+1]=='n'
				m=-1
			end
			description *= "a line from ($(xPos),("	
		else
			
		end
	end
	
end

function plotQuestion(pictureName="question.png")
	p = plot()

	d = [2,3,4]
	y_start = 0
	pos = -5
	ys = []
	codeString ="Sn50" #starts at (-5,0)
	
	while pos<=5
		ds = rand(d)
		is_line = rand([true,false])
			if is_line
				f = line(pos,y_start,pos+ds)
				y_start = Int(f(pos+ds))
				txt = "($(pos+ds),$(y_start))"
				plot!(f,pos,pos+ds;annotation=(pos+ds,y_start,text(txt,8)))
				push!(ys,y_start)
				
				codeString *= "L$(stringIt(pos+ds))$(stringIt(y_start))"
			else
				if ds==3
					r="$(ds)d2"	
				else
					r ="$(Integer(ds/2))"
				end

				f = semiCircle(pos,y_start,pos+ds)
				plot!(f,pos,pos+ds)
				annotate!([(pos+ds,y_start,Plots.text("($(pos+ds),$(y_start))",:left,8))])
				annotate!([(pos+(ds/2),f(pos+(ds/2)),Plots.text("($pos,$(f(pos+(ds/2))))",:bottom,8))])
				push!(ys,f(pos+(ds/2)))
				
				codeString *= "C$(r)"
			end
			if pos+ds>5
				push!(ys,pos+ds)
				break
			end
			pos = pos+ds
	end
	#going through x=-5 to x=5
	y0 = min(minimum(ys),-5)
	yf = max(maximum(ys),5)
	
	
	plot!(
	xlims=[y0,yf],
	ylims=[y0,yf],
	title="$(codeString)",
	minorgrid=true,
	size=(600,600),
	legend=false
	)
	savefig(pictureName)
end

#tablularReasoning
using Calculus, Symbolics, Latexify

mutable struct tabQ
	subQs::Vector{String}
	isHorizontal::Bool
	nFunct::Int
	qType::String
end


qTypes = ["approximation","expression manipulation"]
subApprx = ["mean value theorem","derivative approximation","Riemann sums"]
subExpMani = ["chain rule", "product rule", "quotient rule", "L'Hopital's rule"]
bothTypes = ["Average value","exact derivative","integrals"]


function makeExpr(c::Int,h,subExp::String)
	@variables x
	D = Differential(x)
	baseFunct = ["2^x","x+$c","sin(pi*x)","cos(pi*x)",]
	choice = rand(baseFunct)
	
end

#determine which data is needed
function table(q::tabQ)
	txt = """ """
	l = rand(UnitRange(-5,3))
	r = l+4
	vals = UnitRange(l,r)
	
	#determines which parts of question a,b,c,d are which types
	if q.qType == "approximation"
		q.nFunct = 1
		q.isHorizontal = true
		
	else
		#2-3 questions are expression manip, the others are from both types
		q.nFunct = 3
		
	end
	#generates display

	
	 
end

#this is the julia file that creates the AP test with the questions.
include("graphicAP.jl")
struct frq
	figs::Union{Vector{AbstractString},Nothing}
	Qtype::Vector{AbstractString}
	
end

function docHeader()
"""
<head>
	<title>Question #1</title>
	<meta name="viewport" content="width=device-width">
	<script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
	<script id="MathJax-script" async="" src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>
</head>
"""
end

function leadingText(q::frq)
	txt="""
	<b>Question 1:</b>
	\n
	Let \\(f\\) be a differentiable function. The graph is shown above."""
	# for qPart in q.Qtype
		# if qPart == graphic
			# txt = txt+ "Let "
		# end
	# end
	txt
end

function preText(q::frq)
	#inserting images/etc..
	pT = """
	<body>
	"""
	for fig in q.figs
		pT = pT * """<img src=$(fig) name="cool figure, bro">"""
	end
	pT
end

#to mildly create questions in html format
function createQuestion()
	q = frq(["question.png"],[""])
	file = touch("question.html")
	f = open(file,"w")
	println(f,docHeader())
	println(f,preText(q))
	println(f,leadingText(q))
	
	close(f)
	
end

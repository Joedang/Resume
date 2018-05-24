all:
	make pdf
	make check
	make view

pdf:
	# 
	# BUILDING THE PDF
	# 
	pdflatex resume.tex

check:
	#
	# THINGS TO LOOK AT:
	# (leading dashes are to ignore errors in make)
	#
	-grep -i Error resume.log
	-grep -i Warning resume.log
	-grep -i badness resume.log
	-grep -i overfull resume.log
	-grep -i underfull resume.log

view:
	# 
	# OPENING THE PDF
	# 
	evince resume.pdf &

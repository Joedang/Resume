SRC=CV

all:
	make pdf
	make check
	make view

pdf:
	# 
	# BUILDING THE PDF
	# 
	pdflatex $(SRC)
	bibtex $(SRC)
	pdflatex $(SRC)
	pdflatex $(SRC)

check:
	#
	# THINGS TO LOOK AT:
	# (leading dashes are to ignore errors in make)
	#
	-grep -i Error $(SRC).log
	-grep -i Warning $(SRC).log
	-grep -i badness $(SRC).log
	-grep -i overfull $(SRC).log
	-grep -i underfull $(SRC).log

view:
	# 
	# OPENING THE PDF
	# 
	evince $(SRC).pdf &

clean:
	-gvfs-trash $(SRC).bbl 
	-gvfs-trash $(SRC)-blx.bib 
	-gvfs-trash $(SRC).blg 
	-gvfs-trash $(SRC).log 
	-gvfs-trash $(SRC).aux 
	-gvfs-trash $(SRC).out 
	-gvfs-trash $(SRC).run.xml

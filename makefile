SRC=resume
DEPS=preamble.tex

all:
	make pdf
	make check
	make view

# pdf: $(SRC).tex
# 	# 
# 	# BUILDING THE PDF
# 	# 
# 	pdflatex $(SRC)

pdf:
	make $(SRC).pdf

$(SRC).pdf: $(SRC).tex $(DEPS)
	# 
	# BUILDING THE PDF
	# 
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
	-gvfs-trash $(SRC).log 
	-gvfs-trash $(SRC).aux 
	-gvfs-trash $(SRC).out 

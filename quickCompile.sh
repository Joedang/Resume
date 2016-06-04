#!/bin/bash
pdflatex resume.tex
printf "\nTHINGS TO LOOK AT:\n\n" 
grep -i Error resume.log
grep -i Warning resume.log
grep -i badness resume.log
grep -i overfull resume.log
grep -i underfull resume.log
evince resume.pdf &

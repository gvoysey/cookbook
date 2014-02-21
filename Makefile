all: clean cookbook.pdf

clean:
	rm -rf *.aux *.dvi *.log cookbook.pdf cookbook.tex *.toc *.out *~

%.pdf : %.tex
	pdflatex $* 
	pdflatex $* 
	pdflatex $* 
	pdflatex $* 
	pdflatex $* 

cookbook.tex: prefix.tex  Makefile
	echo '\input{prefix.tex}' >> $@
	./list.pl >> $@
	echo '\end{document}' >> $@

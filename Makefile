all:
	pdflatex Xu_Avila_PRL19.tex
	bibtex Xu_Avila_PRL19
	pdflatex Xu_Avila_PRL19.tex
	pdflatex Xu_Avila_PRL19.tex


diff:
	latexdiff --flatten Xu_Avila_PRL19_orig.tex Xu_Avila_PRL19.tex > diff_raw.tex
	cat diff_raw.tex | tr -d '\015' > diff.tex	
	pdflatex diff.tex
	bibtex diff
	pdflatex diff.tex
	pdflatex diff.tex
#	pdflatex diff.tex
#	pdflatex diff.tex

backup:
	tar cvfz ../backup.tar.gz *; mv ../backup.tar.gz .

clean:
	rm -f Xu_Avila_PRL19.aux  Xu_Avila_PRL19.bbl  Xu_Avila_PRL19.blg  Xu_Avila_PRL19.dvi  Xu_Avila_PRL19.log  Xu_Avila_PRL19.pdf diff.aux  diff.bbl  diff.blg  diff.dvi  diff.log  diff.pdf q.log *~

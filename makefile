# Generate your PDF
%.pdf : %.tex
		@echo '.........: pdflatex running pass 1...'
		pdflatex $< -o $@ 2>&1 | tee errors.err
		@echo '.........: bibtex running...'
		bibtex $(basename $<) 2>&1 | tee errors.err
		@echo '.........: pdflatex running pass 2...'
		pdflatex $< -o $@ 2>&1 | tee errors.err
		@echo '.........: pdflatex and bibtex run finished.'
# Clean temp files
clean :
		rm -f *.o errors.err
		rm -f *.aux *.bbl *.blg *.log *.out
		rm -f *.synctex.gz
		rm -f BUILD
		@echo
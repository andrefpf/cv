all: pt en clean
	@echo Seus arquivos estão disponíveis em \'/pdf\'

pt:
	@pdflatex -output-directory=pdf --interaction=batchmode src/cv_pt.tex 2>&1 > /dev/null

en:
	@pdflatex -output-directory=pdf --interaction=batchmode src/cv_en.tex 2>&1 > /dev/null

clean:
	@rm -f pdf/*.out pdf/*.aux pdf/*.log

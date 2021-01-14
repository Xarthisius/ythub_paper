BNAME=ythub

all: ${BNAME}.pdf

${BNAME}.dvi: ${BNAME}.tex
	pdflatex $<
	bibtex ${BNAME}
	pdflatex $<
	pdflatex $<

${BNAME}.pdf: ${BNAME}.dvi
	/bin/true
#	dvipdf $< $@

tarball:
	tar cvzf ${BNAME}.tar.gz *

clean:
	rm -rf ${BNAME}.{pdf,log,dvi,aux,out,tgz}

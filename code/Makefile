CODEFILES: \
 $(shell groovy ../findScripts.groovy .. .out)

.PRECIOUS: %.groovy

all: allScriptsCompiled scriptCount.tex

distclean: clean
	@rm -f *.md *.out *.bsh *.java *.groovy

clean:
	@rm -f *~ *.class allScriptsCompiled

allScriptsCompiled: ${CODEFILES}
	@touch allScriptsCompiled

%.groovy : %.groovyin source.*.template
	@echo "Processing " $<
	@groovy preprocess $<

%.out: %.groovy md.*.template
	@echo "doing $@..."
	@groovy -cp ${CLASSPATH} ${OPTIONS} -d $< | grep -v "net.sf.jnati.deploy." | groovy ../wrap.groovy > $@
	@if [ -e *.png ]; then mogrify -trim *.png ; fi
	@if [ -e *.png ]; then mv *.png ../images/generated/. ; fi
	@groovy postprocess $<

SOURCES := core.i.md chem.i.md intro.i.md bio.i.md \
  semweb.i.md services.i.md
TARGETS := core.md chem.md intro.md bio.md semweb.md \
  services.md

all: ${TARGETS}

clean:
	@rm -f ${TARGETS}

references.qids: findCitations.groovy ${SOURCES}
	@echo "Finding the citations"
	@groovy findCitations.groovy . | grep "^Q" | sort | uniq > references.qids

references.dat: references.qids references.js
	@nodejs references.js

%.md : %.i.md createMarkdown.groovy references.dat
	@echo "Creating $@"
	@groovy createMarkdown.groovy $< > $@


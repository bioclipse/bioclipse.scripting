SOURCES := core.i.md
TARGETS := core.md

all: ${TARGETS}

clean:
	@rm -f ${TARGETS}

references.qids: findCitations.groovy
	@echo "Finding the citations"
	@groovy findCitations.groovy . | grep "^Q" | sort | uniq > references.qids

references.dat: references.qids references.js
	@nodejs references.js

%.md : %.i.md createMarkdown.groovy references.dat
	@echo "Creating $@"
	@groovy createMarkdown.groovy $< > $@


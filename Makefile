HTML_FILES := $(patsubst %.Rmd, %.html ,$(wildcard *.Rmd))

all: clean html

html: $(HTML_FILES)

.PHONY: clean
clean:
	$(RM) $(HTML_FILES)

# Patterns

%.html: %.Rmd
	Rscript -e 'rmarkdown::render("$<")'


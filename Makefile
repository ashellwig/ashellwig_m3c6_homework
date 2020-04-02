USER_DOCS_DIR = \
	/home/ahellwig/Documents/School/CSC160/Module-2/Programming-Assignments/ashellwig_m3c5_programming_assignment/doc/user_docs

.PHONY = scratch scratch-clean


# Doc
## Clean
user-doc-clean:
	rm -rf \
	*.aux \
	*.bbl \
	*.blg \
	*.bst \
	*.idx \
	*.ind \
	*.lof \
	*.lot \
	*.out \
	*.loc \
	*.toc \
	*.acn \
	*.acr \
	*.alg \
	*.glg \
	*.glo \
	*.gls \
	*.ist \
	*.fls \
	*.log \
	*.fdb_latexmk \
	*.lol \
	*.loa \
	*.synctex.gz
user-doc-clean-all: user-doc-clean
	rm -rf *.pdf
## Build
user-doc-build: %.tex
%.tex: user-doc-clean
	latexmk -synctex=1 -shell-escape -interaction=nonstopmode -file-line-error \
	-jobname=main -pdf main.tex

# Scratch
scratch:
	$(MAKE) -C ./_scratch debug

scratch-clean:
	$(MAKE) -C ./_scratch clean
# textbook content settings
OUTPUT_FILENAME = textbook
OUTPUT_DIRECTORY = public
COVER_IMAGE = assets/images/cover.png
IMAGES = $(shell find assets/images -type f)
CHAPTERS = chapters/*.md
CONTENT = awk 'FNR==1 && NR!=1 {print "\n\n"}{print}' $(CHAPTERS)

# output configuration files
HTML = --defaults assets/config/html.yml
DOCX = --defaults assets/config/docx.yml
LATEX = --defaults assets/config/latex.yml
EPUB = --defaults assets/config/epub.yml

# utilities
MAKEFILE = Makefile
PANDOC_COMMAND = pandoc
BASE_DEPENDENCIES = $(MAKEFILE) $(CHAPTERS) $(IMAGES) 

# build commands
textbook:	epub html pdf docx latex

epub:	$(OUTPUT_DIRECTORY)/$(OUTPUT_FILENAME).epub

html:	$(OUTPUT_DIRECTORY)/$(OUTPUT_FILENAME).html

pdf:	$(OUTPUT_DIRECTORY)/$(OUTPUT_FILENAME).pdf

docx:	$(OUTPUT_DIRECTORY)/$(OUTPUT_FILENAME).docx

latex:	$(OUTPUT_DIRECTORY)/$(OUTPUT_FILENAME).tex

clean:
	rm -r $(OUTPUT_DIRECTORY)

# recipes for outputs
$(OUTPUT_DIRECTORY)/$(OUTPUT_FILENAME).epub:	$(BASE_DEPENDENCIES)
	mkdir -p $(OUTPUT_DIRECTORY)/epub
	$(CONTENT) | tee | $(PANDOC_COMMAND) $(EPUB) -o $@
	@echo "$@ was built"

$(OUTPUT_DIRECTORY)/$(OUTPUT_FILENAME).html:	$(BASE_DEPENDENCIES)
	mkdir -p $(OUTPUT_DIRECTORY)
	$(CONTENT) | tee | $(PANDOC_COMMAND) $(HTML) -o $@
	cp --parents $(IMAGES) $(OUTPUT_DIRECTORY)
	cp assets/css/* $(OUTPUT_DIRECTORY) && cp assets/js/* $(OUTPUT_DIRECTORY)
	mv $(OUTPUT_DIRECTORY)/textbook.html $(OUTPUT_DIRECTORY)/index.html
	@echo "$@ was built"

$(OUTPUT_DIRECTORY)/$(OUTPUT_FILENAME).pdf:	$(BASE_DEPENDENCIES)
	mkdir -p $(OUTPUT_DIRECTORY)/pdf
	$(CONTENT) | tee | $(PANDOC_COMMAND) $(LATEX) -o $@
	@echo "$@ was built"

$(OUTPUT_DIRECTORY)/$(OUTPUT_FILENAME).tex:	$(BASE_DEPENDENCIES)
	mkdir -p $(OUTPUT_DIRECTORY)/tex
	$(CONTENT) | tee | $(PANDOC_COMMAND) $(LATEX) -o $@
	@echo "$@ was built"

$(OUTPUT_DIRECTORY)/$(OUTPUT_FILENAME).docx:	$(BASE_DEPENDENCIES)
	mkdir -p $(OUTPUT_DIRECTORY)/docx
	$(CONTENT) | tee | $(PANDOC_COMMAND) $(DOCX) -o $@
	@echo "$@ was built"

# lantern documentation content settings 
DOCS_OUTPUT_FILENAME = lantern
DOCS_OUTPUT_DIRECTORY = public/docs
DOCS_IMAGES = $(shell find assets/docs/images -type f)
DOCS_CHAPTERS = assets/docs/chapters/*.md
DOCS_CONTENT = awk 'FNR==1 && NR!=1 {print "\n\n"}{print}' $(DOCS_CHAPTERS)
DOCS_DEPENDENCIES = $(MAKEFILE) $(DOCS_CHAPTERS) $(DOCS_IMAGES) 
DOCS = --defaults assets/config/docs.yml

# documentation build commands
docs:	docs_html

docs_html:	$(DOCS_OUTPUT_DIRECTORY)/$(DOCS_OUTPUT_FILENAME).html

# lantern documenation build recipes
$(DOCS_OUTPUT_DIRECTORY)/$(DOCS_OUTPUT_FILENAME).html:	$(DOCS_DEPENDENCIES)
	mkdir -p $(DOCS_OUTPUT_DIRECTORY)
	$(DOCS_CONTENT) | tee | $(PANDOC_COMMAND) $(DOCS) -o $@
	cp $(DOCS_IMAGES) $(DOCS_OUTPUT_DIRECTORY)
	cp assets/css/* $(DOCS_OUTPUT_DIRECTORY)
	cp assets/js/* $(DOCS_OUTPUT_DIRECTORY)
	mv $(DOCS_OUTPUT_DIRECTORY)/$(DOCS_OUTPUT_FILENAME).html $(DOCS_OUTPUT_DIRECTORY)/index.html
	@echo "$@ was built"
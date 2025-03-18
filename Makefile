VPATH = src
RUNTIME = tectonic

LFLAGS = -interaction=nonstopmode -output-directory=build -synctex=1
TFLAGS = --outdir=build --outfmt=pdf

all: miserak_david-cv.pdf

miserak_david-cv.pdf:

%.pdf: %.tex
	$(RUNTIME) $(TFLAGS) $<

miserak_david-cv.tex: experience.tex  education.tex skills.tex


experience.tex: exp-vtds1.tex exp-vtds2.tex exp-amex.tex exp-uvm-li.tex \
exp-vertek.tex exp-sovernet.tex

education.tex: edu-ms.tex edu-bs.tex edu-as.tex

.PHONY: clean
clean:
	rm -rfv build/* src/*~ *~ *.tex

.PHONY: pre-commit-setup
pre-commit-setup:
	@echo "Setting up pre-commit hooks..."
	@echo "consider running <pre-commit autoupdate> to get the latest versions"
	pre-commit install
	pre-commit install --install-hooks
	pre-commit run --all-files

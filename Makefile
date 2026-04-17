DOCS := \
	unit-1-linear/linear-1.tex \
	unit-2-non-linear/quadratic-2.tex \
	unit-2-non-linear/assignment-quadratics.tex \
	unit-3-exponents/exponents-radicals-3.tex \
	unit-3-exponents/radicals.tex \
	unit-4-trig/trigonometric.tex

OUTDIR := $(CURDIR)/out
PDFS   := $(addprefix $(OUTDIR)/,$(notdir $(DOCS:.tex=.pdf)))

.PHONY: all clean

all: $(PDFS)

# Generate one explicit rule per document
define COMPILE_RULE
$(OUTDIR)/$(notdir $(1:.tex=.pdf)): $(1) math-defs.tex | $(OUTDIR)
	latexmk -pdf -interaction=nonstopmode -outdir=$(OUTDIR) $(1)
endef
$(foreach doc,$(DOCS),$(eval $(call COMPILE_RULE,$(doc))))

$(OUTDIR):
	mkdir -p $(OUTDIR)

clean:
	rm -rf $(OUTDIR)

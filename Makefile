FILE=deck_xtrialcmp
TITLE=202X_conf_xtrialcmp

all: html pdf

html:
	quarto render $(FILE).qmd
	cp $(FILE).html index.html

pdf:
	decktape reveal $(FILE).html $(FILE).pdf

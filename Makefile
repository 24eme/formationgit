all: presentation/index.html

presentation/index.html: tp.html outils.html presentation.html presentation/header.html presentation/footer.html 
	cat presentation/header.html presentation.html tp.html outils.html presentation/footer.html > presentation/index.html

presentation.html: presentation.md
	pandoc -t revealjs -o presentation.html presentation.md

outils.html: outils.md
	pandoc -t revealjs -o outils.html outils.md

tp.html: tp.md
	pandoc -t revealjs -o tp.html tp.md



.PHONY: all brain sims clean

all: brain sims

brain:
	cd brain && R -e 'rmarkdown::render("brain.Rmd")'
	cd brain && R -e 'rmarkdown::render("brain_k.Rmd")'
	
sims:
	cd sims && R -e 'rmarkdown::render("sims.Rmd")'
	cd sims && R -e 'rmarkdown::render("sims_k012.Rmd")'
	cd sims && R -e 'rmarkdown::render("sims_prps.Rmd")'	

clean:
	echo "Deleting all output..."
	rm -f brain/*.pdf
	rm -f brain/*.html
	rm -f sims/*.pdf
	rm -f sims/*.rda
	rm -f sims/*.html

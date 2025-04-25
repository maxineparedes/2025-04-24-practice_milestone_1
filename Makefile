.PHONY: all clean

all:
	make data/penguins_data.csv
	make data/clean_penguins.csv
	make results/scatterplot.png

data/penguins_data.csv: scripts/01-read_data.R
	Rscript scripts/01-read_data.R --output=data/penguins_data.csv

data/clean_penguins.csv: scripts/02-clean_data.R
	Rscript scripts/02-clean_data.R --input=data/penguins_data.csv --output=data/clean_penguins.csv

results/scatterplot.png: scripts/03-figures.R
	Rscript scripts/03-figures.R --input=data/clean_penguins.csv --figure=results/scatterplot.png

clean:
	rm -f data/penguins_data.csv
	rm -f data/clean_penguins.csv
	rm -f results/scatterplot.png
	rm -f docs/index.html

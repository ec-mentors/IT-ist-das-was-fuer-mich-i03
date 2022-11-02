#!/bin/bash
# Create slides
echo "Building slides"
make --makefile=SlidesMakefile all

# Re-create website
echo "Building website"
make clean
make html SPHINXOPTS="-t dev"

# Running linkcheck
echo "Linkcheck"
sphinx-build -b linkcheck -n -W source/ public/

echo "Done \o/"
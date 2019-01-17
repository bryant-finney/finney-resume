#!/bin/sh
datestr="`date +%Y-%m-%d`"
latex --output-format=pdf main.tex > build.log
mv main.pdf ${datestr}_finney-resume.pdf
xdg-open ${datestr}_finney-resume.pdf

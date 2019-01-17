#!/bin/sh
datestr="`date +%Y-%m-%d`"
latex --output-format=pdf main.tex > build.log
while grep -n rerun build.log > /dev/null
do
  echo "Build incomplete; rerunning..."
  latex --output-format=pdf main.tex > build.log
done
echo "Build finished"
mv main.pdf ${datestr}_finney-resume.pdf
xdg-open ${datestr}_finney-resume.pdf

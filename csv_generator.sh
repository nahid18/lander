#!/bin/bash

rm -f *.csv && echo "Name,Email,Language,Biostack,Slack" >> team_lander.txt;
ls *.C | parallel gcc -o {.}.c-program {};
ls *.c-program | parallel "./{} | awk -F ': ' ' {print \$2} ' | paste -sd ','  > {.}.lines";
ls *.py | parallel "python3 {} | awk -F ': ' ' {print \$2} ' | paste -sd ','  > {.}.csv";
ls *.R | parallel  "Rscript {} | awk -F ': ' ' {print \$2} ' | paste -sd ',' > {.}.csv";

for i in *.lines; do cat $i | sed 's/,\s*,/,/g' |sed 's/^,//g' | sed 's/,\s*/,/g' | sed 's/^\s*//g'  > $i.csv; done;

cat *.csv >> team_lander.txt;
rm -f *.c-program;
rm -f *.lines;
rm -f *.csv;
mv team_lander.txt team_lander.csv && rm -f *.txt;
#!/bin/bash

rm -f *.csv && echo "Name,Email,Language,Biostack,Slack" >> team_lander.txt;
ls *.py | parallel "python3 {} | awk -F ': ' ' {print \$2} ' | paste -sd ','  > {.}.csv";
ls *.R | parallel  "Rscript {} | awk -F ': ' ' {print \$2} ' | paste -sd ',' > {.}.csv";

cat *.csv >> team_lander.txt;
rm -f *.csv && mv team_lander.txt team_lander.csv && rm -f *.txt;
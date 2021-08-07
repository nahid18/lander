#!/bin/bash

rm -f *.csv && echo "Name,Email,Slack,Biostack,Twitter,Hamming Distance" >> team_lander.txt;
ls *.C | parallel gcc -o {.}.c-program {};
ls *.c-program | parallel "./{} | awk -F ': ' ' {print \$2} ' | paste -sd ','  > {.}.csv";
ls *.cpp | parallel g++ -o {.}.cpp-program {};
ls *.cpp-program | parallel "./{} | awk -F ': ' ' {print \$2} ' | paste -sd ','  > {.}.csv";
ls *.py | parallel "python3 {} | awk -F ': ' ' {print \$2} ' | paste -sd ','  > {.}.csv";
ls *.R | parallel  "Rscript {} | awk -F ': ' ' {print \$2} ' | paste -sd ',' > {.}.csv";
ls *.rb | parallel  "ruby {} | awk -F ': ' ' {print \$2} ' | paste -sd ',' > {.}.csv";

cat *.csv >> team_lander.txt;
rm -f *.c-program;
rm -f *.cpp-program;
rm -f *.csv;
mv team_lander.txt team_lander.csv && rm -f *.txt;
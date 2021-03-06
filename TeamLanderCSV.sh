#!/bin/bash

echo "We are Team Lander";
echo "Installing Dependencies for Team Lander";

sudo apt-get install -y parallel r-base python3.6 g++ gcc ruby perl openjdk-8-jre openjdk-8-jdk-headless;

echo "Cloning Team Lander Repository";

git clone "https://github.com/nahid18/lander.git" && cd lander;

echo "Producing CSV for Team Lander";

echo "Name,Email,Slack,Biostack,Twitter,Hamming Distance" >> team_lander.txt;
ls *.C | parallel gcc -o {.}.c-program {};
ls *.c-program | parallel "./{} | awk -F ': ' ' {print \$2} ' | paste -sd ','  > {.}.csv";
ls *.cpp | parallel g++ -o {.}.cpp-program {};
ls *.cpp-program | parallel "./{} | awk -F ': ' ' {print \$2} ' | paste -sd ','  > {.}.csv";
ls *.py | parallel "python3 {} | awk -F ': ' ' {print \$2} ' | paste -sd ','  > {.}.csv";
ls *.R | parallel  "Rscript {} | awk -F ': ' ' {print \$2} ' | paste -sd ',' > {.}.csv";
ls *.pl | parallel "perl {} | awk -F ': ' ' {print \$2} ' | paste -sd ',' > {.}.csv";
ls *.rb | parallel  "ruby {} | awk -F ': ' ' {print \$2} ' | paste -sd ',' > {.}.csv";
ls *.java | parallel  "javac {}";
ls *.java | parallel "java {.} | awk -F ': ' ' {print \$2} ' | paste -sd ',' > {.}.csv";

cat *.csv >> team_lander.txt;
rm -f *.c-program;
rm -f *.cpp-program;
rm -f *.csv;
rm -f *.class;
mv team_lander.txt team_lander.csv && rm -f *.txt;
mv *.csv ../ && cd ../;
rm -rf lander;

echo "Thank you, HackBio 2021!";

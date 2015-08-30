# Simple oneliner script to convert table separated files to comma separated ones
LC_ALL=C cat inputfile.tsv | LC_ALL=C tr "\\t" "," > outputfile.csv

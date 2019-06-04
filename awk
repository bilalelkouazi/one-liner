search string print each match, count lines
gawk '/TERM/ {print $0}' INPUT.file | wc -l



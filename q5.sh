#!bin/bash
cat to_replace.txt| tr ' ' '\n' | xargs -n1 -I{} mv ./replace/{}.txt ./replace/{}{}.txt


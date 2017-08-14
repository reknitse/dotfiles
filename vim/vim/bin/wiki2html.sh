#!/bin/bash 
 
FORCE="$1" 
SYNTAX="$2" 
EXTENSION="$3" 
OUTPUTDIR="$4" 
INPUT="$5" 
CSSFILE="$6" 
 
FILE=$(basename "$INPUT") 
FILENAME=$(basename "$INPUT" .$EXTENSION) 
FILEPATH=${INPUT%$FILE} 
OUTDIR=${OUTPUTDIR%$FILEPATH*} 
OUTPUT="$OUTDIR"/$FILENAME 
CSSFILENAME=$(basename "$6") 



HAS_MATH=$(grep -o "\$\$.\+\$\$" "$INPUT")
if [ ! -z "$HAS_MATH" ]; then
    # MATH="--mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML"
    >&2 echo "MATH used, but no math compiler installed"
else
    MATH=""
fi

# >&2 echo "MATH: $MATH"

cat "$INPUT" | perl -ne 's/\[\[([^\|]+)\|?(.+)?\]\]/\[\2\]\(\1\)/g;s/(\[.*\])\(((?!\w*\:\/\/)[^#]+)\/(\#.*)?\)/$1($2\/index$3)/g; s/(\[.*\])\(((?!\w*\:\/\/)[^#]+)(\#.*)?\)/$1($2.html\L$3\E)/g; s/(\[.*\])\((#.*)\)/$1(\L$2\E)/g; s/\:(\w+)(?=:\w*:)/\<a id\=\"$1\"\>\<\/a\>/g; s/\:(\w+)\:/\<a id\=\"$1\"\>\<\/a\>/g; print;' | pandoc $MATH -s -f $SYNTAX -t html -c $CSSFILENAME | perl -ne 's/<li>(.*)\[ \]/<li class="todo done0">\1/g; s/<li>(.*)\[X\]/<li class="todo done4">\1/g; s/\<strong\>(.*)\<\/strong\>/<strong id=\"\L$1\E\">$1<\/strong>/g; print' >"$OUTPUT.html"


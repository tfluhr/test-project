#!/usr/bin/bash

docx_files=`ls -1 word-formats/*.docx 2>/dev/null | wc -l`
odt_files=`ls -1 word-formats/*.odt 2>/dev/null | wc -l`

if [ $docx_files != 0 ] ; then 
for f in word-formats/*.docx
    do 
        pandoc "$f" -t markdown --wrap=none --extract-media=assets/images -s -o "${f%.*}.md"
        mv "${f%.docx}.md" chapters/
    done
fi

if [ $odt_files != 0 ] ; then 
for f in word-formats/*.odt
    do 
        pandoc "$f" -t markdown --wrap=none --extract-media=assets/images -s -o "${f%.*}.md"
        mv "${f%.odt}.md" chapters/
    done
fi
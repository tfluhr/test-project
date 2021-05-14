#!/usr/bin/bash

for f in word-formats/*.docx
do 
    pandoc "$f" -t markdown --wrap=none --extract-media=assets/images -s -o "${f%.docx}.md"
    mv "${f%.docx}.md" chapters/
done
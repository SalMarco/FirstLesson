#!/bin/bash

jupyter nbconvert --to slides $1 --reveal-prefix=reveal.js --SlidesExporter.reveal_theme=night --SlidesExporter.reveal_scroll=True --SlidesExporter.reveal_transition=none

name="$(cut -d'_' -f1 <<<"$1")"
mv $name.slides.html $name.html 
git commit -am"Update index.html"
git push -u origin master

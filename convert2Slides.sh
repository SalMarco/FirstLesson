#!/bin/bash

jupyter nbconvert --to slides $1 --reveal-prefix=reveal.js --SlidesExporter.reveal_theme=night --SlidesExporter.reveal_scroll=True --SlidesExporter.reveal_transition=none

mv $1.slides.html $1.html 
git commit -am"Update index.html"
git push -u origin master

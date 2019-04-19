#!/bin/bash
rm -r _build/html
rm -r ../../WebPages/academic-netlify/static/ramses/*
./make.bat html
cp -r _build/html/* ../../WebPages/academic-netlify/static/ramses/
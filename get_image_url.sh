#!/bin/bash
ruby scripts/scraping_image.rb >> image_url/tmp.txt
sed "s/$/,/g" image_url/tmp.txt >> image_url/$1.txt
rm image_url/tmp.txt
sed -e '$d' image_url/$1.txt


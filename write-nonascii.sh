sed 's,.*,sh unicode-numbers.sh "&",'|
sh|
sed 's/'"'"'/&"&"&/g'|
sed 's/%/&&/g'|
sed "s,.*,printf '&\\\n',"|
sed "s/\([0-9]*\),/'\nprintf '\\\x%.02x' \1\nprintf '/g"|
sh|
sed 's<{\(.*\)"\(.*\)"}</bin/echo -e "hb-view\\\
 --font-size=15\\\
 --margin=0\\\
 --output-file="'"$1"'/hb-out.png"\\\
 /usr/share/fonts/truetype/liberation/LiberationSans-Bold.ttf\\\
 '"'"'\1'"'"'\
convert\\\
 '"$1"'/hb-out.png\\\
 -negate\\\
 -monochrome\\\
 -transparent white\\\
 -crop 13x15+0+2\\\
 +repage\\\
 '"$1"'/signs_lib_font_15px_\2.png\
hb-view\\\
 --font-size=31\\\
 --margin=0\\\
 --output-file="'"$1"'/hb-out.png"\\\
 /usr/share/fonts/truetype/liberation/LiberationSans-Bold.ttf\\\
 '"'"'\1'"'"'\
convert\\\
 '"$1"'/hb-out.png\\\
 -negate\\\
 -monochrome\\\
 -transparent white\\\
 -crop 26x31+0+4\\\
 +repage\\\
 '"$1"'/signs_lib_font_31px_\2.png"<'|
sh|
sh -e -x
rm -f "$1/hb-out.png"

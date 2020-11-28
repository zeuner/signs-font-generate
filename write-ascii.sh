(
    seq $((0x$(echo -n a | xxd -ps))) $((0x$(echo -n z | xxd -ps)))
    seq $((0x$(echo -n A | xxd -ps))) $((0x$(echo -n Z | xxd -ps)))
    seq $((0x$(echo -n 0 | xxd -ps))) $((0x$(echo -n 9 | xxd -ps)))
    echo -n " #$%&'()*+,-./:;<=>?@[]^_{|}~!\"\\\`"|
    xxd -ps|
    sed 's/../&\n/g'|
    grep .|
    sed 's/.*/echo $((0x&))/'|
    sh
)|
sed 's<^<printf "%.02x\\n" <'|
sh|
sed 's<.*</bin/echo -e "hb-view\\\
 --font-size=15\\\
 --margin=0\\\
 --output-file="'"$1"'/hb-out.png"\\\
 /usr/share/fonts/truetype/liberation/LiberationSans-Bold.ttf\\\
 '"'"'\\x&'"'"'\
convert\\\
 '"$1"'/hb-out.png\\\
 -negate\\\
 -monochrome\\\
 -transparent white\\\
 -crop 13x15+0+2\\\
 +repage\\\
 '"$1"'/signs_lib_font_15px_&.png\
hb-view\\\
 --font-size=31\\\
 --margin=0\\\
 --output-file="'"$1"'/hb-out.png"\\\
 /usr/share/fonts/truetype/liberation/LiberationSans-Bold.ttf\\\
 '"'"'\\x&'"'"'\
convert\\\
 '"$1"'/hb-out.png\\\
 -negate\\\
 -monochrome\\\
 -transparent white\\\
 -crop 26x31+0+4\\\
 +repage\\\
 '"$1"'/signs_lib_font_31px_&.png"<'|
sh|
sh -e -x
rm -f "$1/hb-out.png"

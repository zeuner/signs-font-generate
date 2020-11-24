# signs-font-generate

This is a collection of helper shell scripts to create textures for international characters to be used with the [signs_lib](https://gitlab.com/VanessaE/signs_lib) Minetest mod.

They currently expect the [Liberation Fonts](https://github.com/liberationfonts/liberation-fonts) to be installed at "/usr/share/fonts/truetype/liberation".

## Usage

sh create-signs-lib-overlay <signs_lib_directory> <language-code>

For example, this command will write textures for the non-ASCII characters
of the French language to "/home/user/signs_lib":

sh create-signs-lib-overlay /home/user/signs_lib fr

Currently, there is support for German (de), French (fr) and Polish (pl)
non-ASCII characters.

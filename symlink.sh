# SYMLINK WHOLE FOLDER
#ln -s ~dotfiles/.config/backgrounds ~/.config/backgrounds

DIR=.config

# SYMLINK ONLY FILES
for dir in "$DIR"/*; do
	# Skip if not a directory
	[ -d "$dir" ] || continue
	
	name=$(basename "$dir")
	echo $name
	mkdir -p ~/.config/"$name"
	(cd "$DIR" && stow -t ~/.config/"$name" "$name")
done






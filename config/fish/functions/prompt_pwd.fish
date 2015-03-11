function prompt_pwd --description 'Print the current working directory, shortened to fit the prompt'
	switch $PWD
	case /
		echo "/"
	case $HOME
		echo "~"
	case '*'
	echo $PWD | sed -e "s@\([^/]*/\)\+@@"
	end
end

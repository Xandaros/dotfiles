function bash --description "Start a bash shell"
	begin
		set -lx NOFISH true
		/usr/bin/bash $argv
	end
end

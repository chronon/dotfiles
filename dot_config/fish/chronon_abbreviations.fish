abbr --add chrobill "cd $HOME/machines/misc/chrobill && docker-compose up -d"

abbr --add dcdown 'docker compose down'
abbr --add dcex 'docker compose exec'
abbr --add dcup 'docker compose up -d'
abbr --add dcupl 'docker compose -f docker-compose.yml -f docker-compose.localdata.yml up -d'

abbr --add dudirs 'du -d 1 -h'
abbr --add kds find\ .\ -name\ .DS_Store\ -print\ -exec\ rm\ -f\ \{\}\ \\\;
abbr --add mcore "cd $HOME/machines/core/"
abbr --add mstatic "cd $HOME/machines/static"
abbr --add devenv "cd $HOME/machines/devenv"
abbr --add mpi "cd $HOME/machines/pi"
abbr --add multitail 'multitail -c'
abbr --add nv nvim
abbr --add kittydiff 'kitty +kitten diff'
abbr --add debian-vm "ssh -t debian-vm 'fish'"
abbr --add rename-ext "fd --extension ctp --exec mv {} {.}.php"
abbr --add icat "kitty +kitten icat"
# abbr --add composer "docker run --rm --interactive --tty --volume $PWD:/app composer"
abbr --add chz chezmoi
abbr --add tailscale "/Applications/Tailscale.app/Contents/MacOS/Tailscale"

abbr --add ghprce "git rebase --whitespace=fix origin/main && gh pr create --assignee @me --label enhancement"
abbr --add ghprcb "git rebase --whitespace=fix origin/main && gh pr create --assignee @me --label bug"
abbr --add ghprm "gh pr merge --merge --delete-branch && git mp"
abbr --add ghprv "gh pr view --web"
abbr --add ghprc "gh pr checks"

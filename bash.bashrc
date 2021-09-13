if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi
PS1='\$ '
username="MKNH"
figlet $username
echo "Hi Again $username"
alias downloads="cd /data/data/com.termux/files/home/storage/downloads"
#/data/data/com.termux/files/usr/etc/bash.bashrc
alias bashreload="source /data/data/com.termux/files/usr/etc/bash.bashrc"
alias c="clear;bashreload"
alias bashedit="nano /data/data/com.termux/files/usr/etc/bash.bashrc"
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias rootdir="cd /data"
alias sddir="cd /storage/3038-3234;ls"
alias devdir="cd /storage/3038-3234/Dev;ls"
alias pydir="cd /storage/3038-3234/Dev/Python;ls"
alias md="mkdir"
alias msf="msfconsole"
alias ins="pkg install"
alias ains="apt install"
alias rf="rm -rf"
alias gic="git clone"
alias q="exit"
update () {
        echo "Full Update is Starting..............."
	echo "--- The Proccess May take 1-5 Mins ---"
        apt update -yy
        apt upgrade -yy
        pkg update -yy
        pkg upgarde -yy
	echo ""
	echo ""
        echo "-------------------------"
        echo " ------- Updated --------"
        echo "-------------------------"
}

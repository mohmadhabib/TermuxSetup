#!/data/data/com.termux/files/usr/bin/bash
clear
echo -e '\033[31;40;1m ______                          ____    __'
echo -e '\033[31;40;1m/_  __/__ ______ _  __ ____ __  / __/__ / /___ _____'
echo -e '\033[31;40;1m / / / -_) __/  ` \/ // /\ \ / _\ \/ -_) __/ // / _ \'
echo -e '\033[31;40;1m/_/  \__/_/ /_/_/_/\_,_//_\_\ /___/\__/\__/\_,_/ .__/'
echo -e '\033[31;40;1m              \033[32;40;1mBY MKNH GitHub @MohmadHabib      \033[31;40;1m/_/\033[36;40;1m[v2.0]'
echo -e '\033[31;40;1m .'
sleep 0.3
echo -e '\033[31;40;1m .'
sleep 0.3
echo -e '\033[31;40;1m .'
sleep 0.3
echo -e '\033[34;40;1m  Please wait...'
sleep 1
apt update -y
clear
echo -e '\033[31;40;1m ______                          ____    __'
echo -e '\033[31;40;1m/_  __/__ ______ _  __ ____ __  / __/__ / /___ _____'
echo -e '\033[31;40;1m / / / -_) __/  ` \/ // /\ \ / _\ \/ -_) __/ // / _ \'
echo -e '\033[31;40;1m/_/  \__/_/ /_/_/_/\_,_//_\_\ /___/\__/\__/\_,_/ .__/'
echo -e '\033[31;40;1m              \033[32;40;1mBY MKNH GitHub @MohmadHabib      \033[31;40;1m/_/\033[36;40;1m[v2.0]'
# update, upgrade
pkg update -y && pkg upgrade -y
clear
echo -e '\033[31;40;1m ______                          ____    __'
echo -e '\033[31;40;1m/_  __/__ ______ _  __ ____ __  / __/__ / /___ _____'
echo -e '\033[31;40;1m / / / -_) __/  ` \/ // /\ \ / _\ \/ -_) __/ // / _ \'
echo -e '\033[31;40;1m/_/  \__/_/ /_/_/_/\_,_//_\_\ /___/\__/\__/\_,_/ .__/'
echo -e '\033[31;40;1m              \033[32;40;1mBY MKNH GitHub @MohmadHabib      \033[31;40;1m/_/\033[36;40;1m[v2.0]'
# configure storage
echo " Configuiring Termux to Use the Phone Storage "
echo " Once the Dialog Appeared Please Select Allow "
termux-setup-storage
clear
echo -e '\033[31;40;1m ______                          ____    __'
echo -e '\033[31;40;1m/_  __/__ ______ _  __ ____ __  / __/__ / /___ _____'
echo -e '\033[31;40;1m / / / -_) __/  ` \/ // /\ \ / _\ \/ -_) __/ // / _ \'
echo -e '\033[31;40;1m/_/  \__/_/ /_/_/_/\_,_//_\_\ /___/\__/\__/\_,_/ .__/'
echo -e '\033[31;40;1m              \033[32;40;1mBY MKNH GitHub @MohmadHabib      \033[31;40;1m/_/\033[36;40;1m[v2.0]'
# Please Make Sure to add the Packages Needed in the Same Array
declare -a Packages=("wget" "net-tools" "mlocate" "python3" "python2" "figlet" "man" "curl" "nodejs" "clang" "zip" "unzip" "tree" "git" "cmatrix" "htop" "grep" "vim" "neofetch")
echo " Now We are Installing the Main Packages "
echo 'echo "${myArray[*]}"'
sleep 10
# INSTALL SOME PROGRAMS
for each_pac in "${Packages[@]}"; do
    pkg install $each_pac -y
done
clear
echo -e '\033[31;40;1m ______                          ____    __'
echo -e '\033[31;40;1m/_  __/__ ______ _  __ ____ __  / __/__ / /___ _____'
echo -e '\033[31;40;1m / / / -_) __/  ` \/ // /\ \ / _\ \/ -_) __/ // / _ \'
echo -e '\033[31;40;1m/_/  \__/_/ /_/_/_/\_,_//_\_\ /___/\__/\__/\_,_/ .__/'
echo -e '\033[31;40;1m              \033[32;40;1mBY MKNH GitHub @MohmadHabib      \033[31;40;1m/_/\033[36;40;1m[v2.0]'
# if your device is rooted, you can install package 'tsu' to be able to use 'sudo' command, for this uncomment next command:
echo "Gain a root shell on Termux while being able to run Termux commands as root.\nOr run one off commands with well known sudo from normal linux distros."
echo -n " Is Your Device Rooted ? [y/n] "
read rooted

if [ "$rooted" = "y" ]; then
    echo "Package tsu Will Be Installed"
    pkg install tsu -y
else
    echo "The Package tsu Skipped Because your Device not Rooted"
fi
clear
echo -e '\033[31;40;1m ______                          ____    __'
echo -e '\033[31;40;1m/_  __/__ ______ _  __ ____ __  / __/__ / /___ _____'
echo -e '\033[31;40;1m / / / -_) __/  ` \/ // /\ \ / _\ \/ -_) __/ // / _ \'
echo -e '\033[31;40;1m/_/  \__/_/ /_/_/_/\_,_//_\_\ /___/\__/\__/\_,_/ .__/'
echo -e '\033[31;40;1m              \033[32;40;1mBY MKNH GitHub @MohmadHabib      \033[31;40;1m/_/\033[36;40;1m[v2.0]'
echo "Configuring Some Programs"
# CONFIGURE SOME PROGRAMS
# confifure vim
# install monokai color scheme 
git clone https://github.com/sickill/vim-monokai 

mkdir -p ~/.vim/colors

mv vim-monokai/colors/monokai.vim ~/.vim/colors && rm -rf vim-monokai/

# configure vim config file (you can edit it, by the way)
cat > ~/.vimrc << EOF
syntax enable
colorscheme monokai

" enable mouse support
set mouse=a

" set black background
hi Normal ctermbg=16 guibg=#000000
hi LineNr ctermbg=16 guibg=#000000

set cursorline
hi cursorline gui=underline cterm=underline ctermbg=NONE
set smartindent
set nowrap
set number
set tabstop=4
set expandtab
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap " ""<left>
EOF
clear
echo -e '\033[31;40;1m ______                          ____    __'
echo -e '\033[31;40;1m/_  __/__ ______ _  __ ____ __  / __/__ / /___ _____'
echo -e '\033[31;40;1m / / / -_) __/  ` \/ // /\ \ / _\ \/ -_) __/ // / _ \'
echo -e '\033[31;40;1m/_/  \__/_/ /_/_/_/\_,_//_\_\ /___/\__/\__/\_,_/ .__/'
echo -e '\033[31;40;1m              \033[32;40;1mBY MKNH GitHub @MohmadHabib      \033[31;40;1m/_/\033[36;40;1m[v2.0]'
echo " Upgrading PIP (Preferred Installer Program) or Easier to say (Python Package Manager) and Installing New and Most needed Onse"
# upgrade pip and install some modules
pip install --upgrade pip
pip install setuptools
pip install requests
pip install bs4

clear
echo -e '\033[31;40;1m ______                          ____    __'
echo -e '\033[31;40;1m/_  __/__ ______ _  __ ____ __  / __/__ / /___ _____'
echo -e '\033[31;40;1m / / / -_) __/  ` \/ // /\ \ / _\ \/ -_) __/ // / _ \'
echo -e '\033[31;40;1m/_/  \__/_/ /_/_/_/\_,_//_\_\ /___/\__/\__/\_,_/ .__/'
echo -e '\033[31;40;1m              \033[32;40;1mBY MKNH GitHub @MohmadHabib      \033[31;40;1m/_/\033[36;40;1m[v2.0]'
# MORE
# remove Termux welcome text
echo "Remove the Welcome Message from the Upper side of Termux Screen, Which is Annoying for most Of Us"
echo -n " Do You Need to Remove Welcome Screen ? [y/n] "
read welcomescreen

if [ "$welcomescreen" = "y" ]; then
    echo "File motd will be Removed"
    rm /data/data/com.termux/files/usr/etc/motd
else
    echo "The Welcome Message will be kept as your Choice"
fi
sleep 2
clear
echo -e '\033[31;40;1m ______                          ____    __'
echo -e '\033[31;40;1m/_  __/__ ______ _  __ ____ __  / __/__ / /___ _____'
echo -e '\033[31;40;1m / / / -_) __/  ` \/ // /\ \ / _\ \/ -_) __/ // / _ \'
echo -e '\033[31;40;1m/_/  \__/_/ /_/_/_/\_,_//_\_\ /___/\__/\__/\_,_/ .__/'
echo -e '\033[31;40;1m              \033[32;40;1mBY MKNH GitHub @MohmadHabib      \033[31;40;1m/_/\033[36;40;1m[v2.0]'
# Replace bash.bashrc with my Modified One
mv /data/data/com.termux/files/usr/etc/bash.bashrc /data/data/com.termux/files/usr/etc/bash.bashrc_BackUp
git clone https://github.com/mohmadhabib/termux-setup
mv termux-setup/bash.bashrc /data/data/com.termux/files/usr/etc
cd ~
rm -rf termux-setup
clear
echo -e '\033[31;40;1m ______                          ____    __'
echo -e '\033[31;40;1m/_  __/__ ______ _  __ ____ __  / __/__ / /___ _____'
echo -e '\033[31;40;1m / / / -_) __/  ` \/ // /\ \ / _\ \/ -_) __/ // / _ \'
echo -e '\033[31;40;1m/_/  \__/_/ /_/_/_/\_,_//_\_\ /___/\__/\__/\_,_/ .__/'
echo -e '\033[31;40;1m              \033[32;40;1mBY MKNH GitHub @MohmadHabib      \033[31;40;1m/_/\033[36;40;1m[v2.0]'
# install onex
echo -n " Do you Need To Install Onex Tools Set ? [y/n] "
read onextoolset

if [ "$onextoolset" = "y" ]; then
    echo "Onex Tools Set will Be Installed"
    git clone https://github.com/rajkumardusad/onex.git
    chmod +x onex/install
    ./onex/install
else
    echo "You Can Install Onex any time by run this Command:\ngit clone https://github.com/rajkumardusad/onex.git && chmod +x onex/install && ./onex/install"
fi

sleep 2
echo "Termux setup complete!"
echo "You Can Visit my GitHub For Useful Tools"
echo "https://github.com/mohmadhabib"
sleep 3
echo "You have to Restart Termux Now By Hitting CTL + D and then Press Enter"
echo "Or Simply Exit from Termux and then Open Notification Panel then Press Exit from Termux"
sleep 2
exit 0

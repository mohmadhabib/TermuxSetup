# About
Setup Termux App For Android Devices, It's Simple and Easy

# The Main Setup of My Termux
If you run [termux-setup.sh](https://github.com/mohmadhabib/TermuxSetup/termux-setup.sh), it will do this things:
* Update, upgrade packages.
* Install Several Packages ("wget" "net-tools" "mlocate" "python3" "python2" "figlet" "man" "curl" "nodejs" "clang" "zip" "unzip" "tree" "git" "cmatrix" "htop" "grep" "vim" "neofetch")
* Give Termux a storage access permission.
* Configure vim.
* Upgrade pip and install some modules.
* Remove Termux welcome text.
* Update and Replace the bash.bashrc File with Moded One
* Install onex.

# How to run this on Termux
There several options to run this script on Termux.
* you can use the file from here by Run this Code:
```
pkg install curl && bash <(curl -s https://raw.githubusercontent.com/mohmadhabib/TermuxSetup/main/termux-setup.sh)
```
* You can just copy the script's content and past it in a new file and then execute it.
```
# Create the File
nano myscript.sh
# Paste the Code in termux-setup.sh to the New created File (myscript.sh) and Then Press CTR + O and CTR + X
# then Chnage the Mode of File to Be Excecutable
chmod +x myscript.sh
# Then Run it
./myscript.sh
```

* You can download this repository by entering this commands in your terminal:
```
pkg update && pkg install git -y
git clone https://github.com/mohmadhabib/termux-setup && cd termux-setup && chmod +x termux-setup.sh && bash termux-setup.sh && cd .. && rm -rf termux-setup
```

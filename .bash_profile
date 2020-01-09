echo -n -e "\033]0;Terminal\007"
echo Hey Neel,
echo 
motivate | cowsay -f `ls /usr/local/Cellar/cowsay/3.04/share/cows | gshuf -n 1` 
alias ls='ls -G'
ntfs () {
        sudo /usr/local/bin/ntfs-3g /dev/$1 /Volumes/NTFS -olocal -oallow_other
}
connect () {
        ssh neelr@192.168.1.65 #connect to my local server
}
conn () {
        ssh -l pi proxy21.rt3.io -p 33410 # Other server
}
c++ () {
        g++ $1
        ./a.out
}
hub () {
        cd ~/Documents/Git
}

PS1="\033[1;37m▲ \w \033[0m"

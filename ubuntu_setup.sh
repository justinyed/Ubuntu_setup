clear
# Initialize...
# Make Directory '.applications' 
sudo mkdir -p -m a=rwx .applications
# Change directory to /tmp for temporary downloads
cd /tmp
# ---------------------------------------- 
## snap mode: apt
sudo apt-get -yq install snapd
## flatpak mode: apt
sudo apt-get -yq install flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# ---------------------------------------- 
## curl mode: apt
sudo apt-get -yq install curl
## wget mode: apt
sudo apt-get -yq install wget
# ---------------------------------------- 
## Gnome Tools mode: custom
sudo apt-get -yq install gnome-tweak-tool
sudo apt-get -yq install gnome-shell-extensions
## Extension CLI mode: custom
wget https://raw.githubusercontent.com/martin-sucha/gnome-shell-extension-cli/master/gnome-shell-extension-cli
sudo mv gnome-shell-extension-cli /usr/bin/
sudo chmod +x /usr/bin/gnome-shell-extension-cli
## MS Fonts mode: custom
echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections
clear
# ---------------------------------------- 
# Update & Clean-up
sudo dpkg --configure -a
sudo apt-get -yq update
sudo apt-get -yq upgrade
sudo apt-get -yq dist-upgrade
sudo apt-get -yq autoremove
clear
# ---------------------------------------- 
# Package Installation(101)...
## texlive - mode: apt
sudo apt-get -yq install texlive-latex-extra
## pandoc - mode: apt
sudo apt-get -yq install pandoc
## Catfish - mode: apt
sudo apt-get -yq install catfish
## Anaconda Dependency - mode: apt
sudo apt-get -yq install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6
## Putty - mode: apt
sudo apt-get -yq install putty
## Stacer - mode: apt
sudo apt-get -yq install stacer
## synaptic - mode: apt
sudo apt-get -yq install synaptic
## TimeShift - mode: apt
sudo apt-get -yq install timeshift
## Restic - mode: apt
sudo apt-get -yq install restic
## Midnight Commander - mode: apt
sudo apt-get -yq install mc
## Meson - mode: apt
sudo apt-get -yq install meson
## Java - mode: apt
sudo apt-get -yq install openjdk-11-jdk
## Git - mode: apt
sudo apt-get -yq install git
## Rstudio - mode: apt
sudo apt-get -yq install r-base r-base-dev
## PWGen - mode: apt
sudo apt-get -yq install pwgen
## Firejail - mode: apt
sudo apt-get -yq install firejail firetools
## tlp - mode: apt
sudo apt-get -yq install tlp
## powertop - mode: apt
sudo apt-get -yq install powertop
## nvtop - mode: apt
sudo apt-get -yq install nvtop
## xclip - mode: apt
sudo apt-get -yq install xclip
## net-tools - mode: apt
sudo apt-get -yq install net-tools
## Resctricted Addons - mode: apt
sudo apt-get -yq install ubuntu-restricted-addons
## 7zip - mode: apt
sudo apt-get -yq install p7zip-full
## hardinfo - mode: apt
sudo apt-get -yq install hardinfo
## bleachbit - mode: apt
sudo apt-get -yq install bleachbit
## multiboot - mode: apt
sudo apt-get -yq install multiboot
## gnome boxes - mode: apt
sudo apt-get -yq install gnome-boxes
## wine - mode: apt
sudo apt-get -yq install wine64
## q4wine - mode: apt
sudo apt-get -yq install q4wine
## virt manager - mode: apt
sudo apt-get -yq install virt-manager
## virtual box - mode: apt
sudo apt-get -yq install virtualbox
## qemu - mode: apt
sudo apt-get -yq install qemu libvirt-daemon-system libvirt-clients ebtables dnsmasq-base
## youtube-dl - mode: apt
sudo apt-get -yq install youtube-dl
## ffmpeg - mode: apt
sudo apt-get -yq install ffmpeg
## ncal - mode: apt
sudo apt-get -yq install ncal
## espanso - mode: pass
## Brave - mode: pass
## VeraCrypt - mode: pass
## Prey - mode: pass
## Setzer - mode: flatpak
sudo flatpak install -y flathub org.cvfosammmm.Setzer
## Discord - mode: flatpak
sudo flatpak install -y flathub com.discordapp.Discord
## Android Studio - mode: flatpak
sudo flatpak install -y flathub com.google.AndroidStudio
## Builder - mode: flatpak
sudo flatpak install -y flathub org.gnome.Builder
## Eclipse - mode: flatpak
sudo flatpak install -y flathub org.eclipse.Java
## Auth - mode: flatpak
sudo flatpak install -y flathub com.github.bilelmoussaoui.Authenticator
## green envy - mode: flatpak
sudo flatpak install -y flathub com.leinardi.gwe
## Only Office - mode: snap
sudo snap install onlyoffice-desktopeditors
## latexmk - mode: snap
sudo snap install latexmk
## Foliate - mode: snap
sudo snap install foliate
## Chess - mode: snap
sudo snap install knights
## vim - mode: snap
sudo snap install vim
## Simplenote - mode: snap
sudo snap install simplenote
## Slack - mode: snap
sudo snap install slack --classic
## Session - mode: snap
sudo snap install session-desktop
## Clock - mode: snap
sudo snap install gnome-clocks
## translatium - mode: snap
sudo snap install translatium
## QR Code Generator - mode: snap
sudo snap install qr-code-generator-desktop
## Remmina - mode: snap
sudo snap install remmina
## Qalculate - mode: snap
sudo snap install qalculate
## VLC - mode: snap
sudo snap install vlc
## Spotify - mode: snap
sudo snap install spotify
## mackup - mode: snap
sudo snap install mackup --classic
## Cmake - mode: snap
sudo snap install cmake --classic
## IntelliJ IDEA - mode: snap
sudo snap install intellij-idea-ultimate --classic
## PyCharm Pro - mode: snap
sudo snap install [pycharm-professional|pycharm-community] --classic
## Clion Pro - mode: snap
sudo snap install clion --classic
## VS Code Studio - mode: snap
sudo snap install --classic code
## grv - mode: snap
sudo snap install grv
## getenv - mode: snap
sudo snap install getenv
## git Recall - mode: snap
sudo snap install git-standup
## opengrok search - mode: snap
sudo snap install opengrok
## Micro - mode: snap
sudo snap install micro --classic
## Bitwarden - mode: snap
sudo snap install bitwarden
## bitwarden cli - mode: snap
sudo snap install bw
## KeePassXC - mode: snap
sudo snap install keepassxc
## GTK Hash - mode: snap
sudo snap install gtkhash
## fkill - mode: snap
sudo snap install fkill
## htop - mode: snap
sudo snap install htop
## cpustat - mode: snap
sudo snap install cpustat
## fast - mode: snap
sudo snap install fast
## Gimp - mode: snap
sudo snap install gimp
## Inkscape - mode: snap
sudo snap install inkscape
## Krita - mode: snap
sudo snap install krita
## drawio - mode: snap
sudo snap install drawio
## ubuntu-make - mode: snap
sudo snap install ubuntu-make --classic
## docker - mode: snap
sudo snap install docker
## Transmission - mode: repo
sudo apt-add-repository -ys "ppa:transmissionbt/ppa"
sudo apt-get -yq update
sudo apt-get -yq install transmission-gtk transmission-cli transmission-common transmission-daemon 
## papirus-icon-theme - mode: repo
sudo apt-add-repository -ys "ppa:papirus/papirus"
sudo apt-get -yq update
sudo apt-get -yq install papirus-icon-theme 
## obs - mode: repo
sudo apt-add-repository -ys "ppa:obsproject/obs-studio"
sudo apt-get -yq update
sudo apt-get -yq install obs-studio 
## Cryptomator - mode: repo
sudo apt-add-repository -ys "ppa:sebastian-stenzel/cryptomator"
sudo apt-get -yq update
sudo apt-get -yq install cryptomator 
## Cheese - mode: apt
sudo apt-get -yq install cheese
## gestures - mode: pass
## jetbrains toolbox - mode: pass
## OCR My Pdf - mode: apt
sudo apt-get -yq install ocrmypdf
## appimage launcher - mode: repo
sudo apt-add-repository -ys "ppa:appimagelauncher-team/stable"
sudo apt-get -yq update
sudo apt-get -yq install appimagelauncher 
## Pdf Arranger - mode: flatpak
sudo flatpak install -y flathub com.github.jeromerobert.pdfarranger
## Tor Browser - mode: flatpak
sudo flatpak install -y flathub com.github.micahflee.torbrowser-launcher
## Video Downloader - mode: flatpak
sudo flatpak install -y flathub com.github.unrud.VideoDownloader
## Typora Key - mode: pass
## Typora - mode: pass
## woe usb burner - mode: repo
sudo apt-add-repository -ys "ppa:tomtomtom/woeusb"
sudo apt-get -yq update
sudo apt-get -yq install woeusb 
sudo apt-get -yq autoclean

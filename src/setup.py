import os
import signal
import sys
import pandas as pd


def intitialize():

    script.write("#!/bin/bash")
    # Update pre-installed packages and Clean up
    script.write(f"# {'-'*40} \n")
    script.write("# Update & Clean-up\n")
    sudo('dpkg --configure -a')
    apt('update')
    apt('upgrade')
    apt('dist-upgrade')
    apt('autoremove')
    exec('clear')

    script.write("# Initialize...\n")
    # Setup signal handler
    signal.signal(signal.SIGINT, exit)

    # Create directory for Applications (If one doesn't exist)
    script.write("# Make Directory '.applications' \n")
    sudo('mkdir -p -m a=rwx .applications')

    # Change directory to /tmp for temporary downloads
    script.write("# Change directory to /tmp for temporary downloads\n")
    exec(f'cd {default_directory}')

    # Install Snap and Flatpak
    script.write(f"# {'-'*40} \n")
    script.write("## snap mode: apt\n")
    install_apt('snapd')
    script.write("## flatpak mode: apt\n")
    install_apt('flatpak')
    sudo('flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo')

    # Install Curl and wget
    script.write(f"# {'-'*40} \n")
    script.write("## curl mode: apt\n")
    install_apt('curl')
    script.write("## wget mode: apt\n")
    install_apt('wget')

    # Install Gnome Tools
    script.write(f"# {'-'*40} \n")
    script.write("## Gnome Tools mode: custom\n")
    install_apt('gnome-tweak-tool')
    install_apt('gnome-shell-extensions')

    # Install gnome shell extension cli
    script.write("## Extension CLI mode: custom\n")
    exec('wget https://raw.githubusercontent.com/martin-sucha/gnome-shell-extension-cli/master/gnome-shell-extension-cli')
    sudo('mv gnome-shell-extension-cli /usr/bin/')
    sudo('chmod +x /usr/bin/gnome-shell-extension-cli')

    # Install Fonts
    script.write("## MS Fonts mode: custom\n")
    exec('echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections')

    # # Install Brave Browser
    # script.write("## Brave mode: custom\n")
    # install_apt('apt-transport-https curl')
    # exec(
    #     'curl - s https: // brave-browser-apt-release.s3.brave.com/brave-core.asc | apt-key - -keyring / etc/apt/trusted.gpg.d/brave-browser-release.gpg add - & & echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | tee / etc/apt/sources.list.d/brave-browser-release.list & & sudo apt update & & sudo apt-get install - yq brave-browser')

    exec('clear')


def exec(cmd):
    print(cmd)
    script.write(cmd + "\n")
    # os.system(cmd)


def sudo(cmd):
    exec(f'sudo {cmd}')


def apt(cmd):
    sudo(f'apt-get -yq {cmd}')


def apt_key(url):
    exec(f'wget -qO - {url} | sudo apt-key add -')


def install_repo(pkg):
    arg1, arg2 = pkg.split('ppa:')
    sudo(f'apt-add-repository -ys "ppa:{arg2}"')
    apt('update')
    install_apt(arg1)


def install_apt(pkg):
    apt(f'install {pkg}')


def install_deb(name, url):
    exec(f'wget {url} -O program.deb')
    install_apt('./program.deb')
    exec('rm ./program.deb')


def install_snap(package):
    exec(f'sudo snap install {package}')


def install_flat(package):
    exec(f'sudo flatpak install -y flathub {package}')


def install_pip(package):
    exec(f'pip3 install --system --upgrade {package}')


def install_appimage(package, url):
    exec(f'wget {url} -O {package}.AppImage')
    exec(f'chmod a+x {package}.AppImage')
    exec(f'mv {package}.AppImage ~/.appimages/{package}.AppImage')
    exec(f'chmod a+x ~/.appimages/{package}.AppImage')


def install_gnome(ext):
    exec(f'gnome-shell-extension-cli install {ext}')


def gnome_enable(ext):
    exec(f'gnome-shell-extension-tool -e {ext}')


def gnome_disable(ext):
    exec(f'gnome-shell-extension-tool -d {ext}')


def exit():
    apt('autoclean')
    script.close()
    sys.exit(0)


# Dictionary Mapping
install_mode = {
    'apt': install_apt,
    'snap': install_snap,
    'flatpak': install_flat,
    'appimage': install_appimage,
    'deb': install_deb,
    'raw': exec,
    'repo': install_repo,
    'key': apt_key,
    'ext': install_gnome
}


def install(name, mode, *args):
    script.write(f"## {name} - mode: {mode}\n")
    return install_mode.get(mode, lambda *_: f"pass - {name}")(*args)


if __name__ == "__main__":
    default_directory = "/tmp"
    script_filename = 'ubuntu_setup.sh'
    packages_filename = "package.csv"

    # Open Script File to act as log or to be used as install script
    script = open(script_filename, 'w')

    # Read CSV File into Pandas Data-Frame
    pkgs = pd.read_csv(packages_filename, index_col=False).fillna('')
    exec('clear')
    print(pkgs)

    intitialize()
    script.write(f"# {'-'*40} \n")
    script.write(f"# Package Installation({len(pkgs.index)})...\n")

    for r in pkgs.itertuples():

        # install(name, mode, args)
        install(r[1], r[2], r[3])

    exit()

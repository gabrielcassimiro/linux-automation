echo "Starting automated installation script for drivers, sdk and applications for Ubuntu."
echo "Made by Gabriel Cassimiro"

sudo apt update
    echo "Installing Flatpak"
    sudo apt install flatpak
    sudo apt install gnome-software-plugin-flatpak
    flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

    echo "Installing Drivers and SDKs"

    sudo apt install git

    sudo apt update && \
    sudo apt install -y dotnet-sdk-8.0

    sudo apt update && \
    sudo apt install -y aspnetcore-runtime-8.0

    sudo apt install -y dotnet-runtime-8.0

    sudo apt update && \
    sudo apt install -y dotnet-sdk-6.0
    
    sudo apt update && \
    sudo apt install -y aspnetcore-runtime-6.0

    sudo apt install -y dotnet-runtime-6.0
    
    echo "Installing apps"


    echo "Installing Docker"
    # Add Docker's official GPG key:
    sudo apt update
    sudo apt install ca-certificates curl
    sudo install -m 0755 -d /etc/apt/keyrings
    sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
    sudo chmod a+r /etc/apt/keyrings/docker.asc

    # Add the repository to Apt sources:
    echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
    $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt update

    sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

    echo "Installing curl"
    sudo apt install curl
    sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

    echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

    sudo apt update

    echo "Installing brave browser"

    sudo apt install brave-browser

    echo "Installing Flameshot"

    sudo apt install flameshot

    echo "Installing Chrome"

    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo apt install ./google-chrome*.deb

    echo "Installing nodejs and npm"

    sudo apt-get install nodejs
    sudo apt install npm

    echo "Installing Jetbrains Toolbox"

    sudo apt-get install -y libfuse2
    wget -c https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.27.3.14493.tar.gz
    sudo tar -xzf jetbrains-toolbox-1.27.3.14493.tar.gz -C /opt
    /opt/jetbrains-toolbox-1.27.3.14493/jetbrains-toolbox

    echo "Installing Flutter"

    sudo apt-get update -y && sudo apt-get upgrade -y;
    sudo apt-get install -y curl git unzip xz-utils zip libglu1-mesa

    sudo apt-get install \
      clang cmake git \
      ninja-build pkg-config \
      libgtk-3-dev liblzma-dev \
      libstdc++-12-dev

    echo "Installling podman"
    sudo apt-get -y install podman

    echo "Installing flatpaks"
    flatpak install flathub io.github.flattool.Warehouse
    flatpak install flathub io.podman_desktop.PodmanDesktop
    flatpak install flathub org.godotengine.Godot
    flatpak install flathub com.stremio.Stremio
    flatpak install flathub com.obsproject.Studio
    flatpak install flathub org.gimp.GIMP
    flatpak install flathub org.kde.krita
    flatpak install flathub com.unity.UnityHub
    flatpak install flathub me.iepure.devtoolbox
    flatpak install flathub com.heroicgameslauncher.hgl
    flatpak install flathub com.valvesoftware.Steam
    flatpak install flathub com.valvesoftware.SteamLink
    flatpak install flathub com.discordapp.Discord
    flatpak install flathub org.telegram.desktop
    flatpak install flathub com.rtosta.zapzap
    flatpak install flathub com.axosoft.GitKraken

# echo "Select an installation option"
# echo "1. Completely automated"
# echo "2. Manually (Choosing what to install)"
# read option

# if [[ "$option" == "1" ]]
# then
#     sudo apt update
#     echo "Installing Flatpak"
#     sudo apt install flatpak
#     sudo apt install gnome-software-plugin-flatpak
#     flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

#     echo "Installing Drivers and SDKs"

#     sudo apt install git

#     sudo apt update && \
#     sudo apt install -y dotnet-sdk-8.0

#     sudo apt update && \
#     sudo apt install -y aspnetcore-runtime-8.0

#     sudo apt install -y dotnet-runtime-8.0

#     sudo apt update && \
#     sudo apt install -y dotnet-sdk-6.0
    
#     sudo apt update && \
#     sudo apt install -y aspnetcore-runtime-6.0

#     sudo apt install -y dotnet-runtime-6.0
    
#     echo "Installing apps"


#     echo "Installing Docker"
#     # Add Docker's official GPG key:
#     sudo apt update
#     sudo apt install ca-certificates curl
#     sudo install -m 0755 -d /etc/apt/keyrings
#     sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
#     sudo chmod a+r /etc/apt/keyrings/docker.asc

#     # Add the repository to Apt sources:
#     echo \
#     "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
#     $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
#     sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
#     sudo apt update

#     sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

#     echo "Installing curl"
#     sudo apt install curl
#     sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

#     echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

#     sudo apt update

#     echo "Installing brave browser"

#     sudo apt install brave-browser

#     echo "Installing Flameshot"

#     sudo apt install flameshot

#     echo "Installing Chrome"

#     wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#     sudo apt install ./google-chrome*.deb

#     echo "Installing nodejs and npm"

#     sudo apt-get install nodejs
#     sudo apt install npm

#     echo "Installing Jetbrains Toolbox"

#     sudo apt-get install -y libfuse2
#     wget -c https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.27.3.14493.tar.gz
#     sudo tar -xzf jetbrains-toolbox-1.27.3.14493.tar.gz -C /opt
#     /opt/jetbrains-toolbox-1.27.3.14493/jetbrains-toolbox

#     echo "Installing Flutter"

#     sudo apt-get update -y && sudo apt-get upgrade -y;
#     sudo apt-get install -y curl git unzip xz-utils zip libglu1-mesa

#     sudo apt-get install \
#       clang cmake git \
#       ninja-build pkg-config \
#       libgtk-3-dev liblzma-dev \
#       libstdc++-12-dev

#     echo "Installling podman"
#     sudo apt-get -y install podman

#     echo "Installing flatpaks"
#     flatpak install flathub com.zettlr.Zettlr
#     flatpak install flathub io.github.flattool.Warehouse
#     flatpak install flathub io.podman_desktop.PodmanDesktop
#     flatpak install flathub org.godotengine.Godot
#     flatpak install flathub com.stremio.Stremio
#     flatpak install flathub com.obsproject.Studio
#     flatpak install flathub org.gimp.GIMP
#     flatpak install flathub org.kde.krita
#     flatpak install flathub com.unity.UnityHub
#     flatpak install flathub me.iepure.devtoolbox
#     flatpak install flathub com.heroicgameslauncher.hgl
#     flatpak install flathub com.valvesoftware.Steam
#     flatpak install flathub com.valvesoftware.Steam
#     flatpak install flathub com.discordapp.Discord
#     flatpak install flathub org.telegram.desktop
#     flatpak install flathub com.rtosta.zapzap

# elif [[ "$option" == "2" ]]
# then
#     sudo apt update
#     # #Install Flatpak

#     echo "Is Flatpak already installed? [y|n]:"

#     read fp

#     if [[ "$fp" == "n" || "$fp" == "N" ]]
#     then
#     echo "Installing Flatpak"
#     sudo apt install flatpak
#     sudo apt install gnome-software-plugin-flatpak
#     flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
#     else
#     :
#     fi

#     echo "Installing apps"
#     flatpak install flathub com.zettlr.Zettlr

# else
#     echo "Installation canceled"
# fi
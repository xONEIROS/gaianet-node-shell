#!/bin/bash
bold_purple='\033[1;35m'
reset='\033[0m'
echo -e "${bold_purple}Executing curl -sSfL 'https://github.com/GaiaNet-AI/gaianet-node/releases/latest/download/install.sh' | bash${reset}"
echo
curl -sSfL 'https://github.com/GaiaNet-AI/gaianet-node/releases/latest/download/install.sh' | bash
echo
export PATH=$PATH:$HOME/gaianet/bin
if [ -n "$BASH_VERSION" ]; then
    echo -e "${bold_purple}Executing source ~/.bashrc${reset}"
    echo
    source ~/.bashrc
elif [ -n "$ZSH_VERSION" ]; then
    echo -e "${bold_purple}Executing source ~/.zshrc${reset}"
    echo
    source ~/.zshrc
elif [ -n "$FISH_VERSION" ]; then
    echo -e "${bold_purple}Executing source ~/.config/fish/config.fish${reset}"
    echo
    source ~/.config/fish/config.fish
else
    echo -e "${bold_purple}Shell configuration not found. Please source your shell configuration manually.${reset}"
fi
echo
sleep 3
echo -e "${bold_purple}Executing gaianet init --config https://raw.githubusercontent.com/GaiaNet-AI/node-configs/main/qwen-1.5-0.5b-chat/config.json${reset}"
echo
gaianet init --config https://raw.githubusercontent.com/GaiaNet-AI/node-configs/main/qwen-1.5-0.5b-chat/config.json
echo
echo -e "${bold_purple}Executing gaianet start${reset}"
echo
gaianet start
echo
echo -e "${bold_purple}Executing gaianet info${reset}"
echo
gaianet info
echo
echo -e "${bold_purple}Visit: https://www.gaianet.ai/node and set UP${reset}"
echo
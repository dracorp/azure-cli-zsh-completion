autoload -U +X bashcompinit && bashcompinit
if [[ $(uname -s)  == Darwin ]]; then
    source /usr/local/opt/azure-cli/etc/bash_completion.d/az
else
    source /etc/bash_completion.d/azure-cli
fi

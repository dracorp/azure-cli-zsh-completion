autoload -U +X bashcompinit && bashcompinit
if [[ $(uname -s)  == Darwin ]]; then
    if [[ -r ${HOMEBREW_CELLAR}/azure-cli/2.40.0/etc/bash_completion.d/az ]]; then
        source ${HOMEBREW_CELLAR}/azure-cli/2.40.0/etc/bash_completion.d/az
    elif [[ ! -r /usr/local/opt/azure-cli/etc/bash_completion.d/az ]]; then
        echo 'azure-cli is not installed, you should "brew install azure-cli" first.'
        echo 'See https://docs.microsoft.com/pl-pl/cli/azure/install-azure-cli-macos'
        return 1
    else
        source /usr/local/opt/azure-cli/etc/bash_completion.d/az
    fi
else
    if [[ ! -r /etc/bash_completion.d/azure-cli ]]; then
        echo 'azure-cli is not installed, you should "brew install azure-cli" first.'
        echo 'See https://docs.microsoft.com/pl-pl/cli/azure/install-azure-cli'
        return 1
    else
        source /etc/bash_completion.d/azure-cli
    fi
fi

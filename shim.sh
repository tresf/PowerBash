#!/usr/bin/env bash

# PowerShell shim
function _pwsh {
    set "-e"; Write-Host 2>&1 | Out-Null
    irm https://raw.githubusercontent.com/tresf/PowerBash/main/script.ps1 | iex
}
function _exit {
    exit 0
}

# curl attempt
function _curl {
    set "-e"
    curl --version > /dev/null 2>&1
    curl https://raw.githubusercontent.com/tresf/PowerBash/main/script.sh |bash
    exit $?
}

# wget fallback
function _wget {
    wget -O - https://raw.githubusercontent.com/tresf/PowerBash/main/script.sh|bash
}

_pwsh 2>&1 | _exit 2>&1 |#
_curl | _exit
_wget

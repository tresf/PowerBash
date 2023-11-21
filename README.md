# powerbash
Crude PowerShell / Bash Invoker

## Description
Leverages nuanced similarites between PowerShell and bash to allow a single web URL to invoke either a bash or a PowerShell script from bash or from PowerShell.

## From Terminal
```bash
curl https://raw.githubusercontent.com/tresf/powerbash/main/shim.sh | bash
```

```bash
wget -O - https://raw.githubusercontent.com/tresf/powerbash/main/shim.sh |bash
```

## From PowerShell
```ps1
irm https://raw.githubusercontent.com/tresf/powerbash/main/shim.sh |iex
```

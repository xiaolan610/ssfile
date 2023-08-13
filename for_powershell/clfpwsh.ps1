[Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12
Register-PSRepository -Default -Verbose
Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted
Set-ExecutionPolicy AllSigne
install-Module PSColor
Install-Module DirColors
Import-Module ZLocation
Install-Module PSReadLine -AllowPrerelease -Force
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))
oh-my-posh init
PowerShellGet\Install-Module posh-git -Scope CurrentUser -Force
Install-Module ZLocation -Scope CurrentUser
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://ghproxy.com/https://raw.githubusercontent.com/ScoopInstaller/Install/master/install.ps1')
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
iwr https://community.chocolatey.org/install.ps1 -UseBasicParsing | iex
scoop install aria2c 
scoop config aria2-retry-wait 4
scoop config aria2-split 16
scoop config aria2-max-connection-per-server 16
scoop config aria2-min-split-size 4M
scoop install git sudo python nano
choco install node.js
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
pip install rich cython pyfiglet
cd ~
aria2c https://gitee.com/supollad/shellfiles/raw/file/for_powershell/Microsoft.PowerShell_profile.ps1
aria2c https://ghproxy.com/https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/montys.omp.json
git clone https://ghproxy.com/https://github.com/Textualize/rich-cli.git 
cd rich-cli
pip install -e .
cd ~
New-Item –Path $Profile –Type File
mv Microsoft.PowerShell_profile.ps1 ~\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
.$profile
rich -p "[green]基本完成"
rich -p "[cyan]若想修改艺术字，请运行 [yellow]notepad $profile[cyan]并更新[yellow]python -m pyfiglet --color=LIGHT_CYAN [cyan]后的内容（别动引号）"



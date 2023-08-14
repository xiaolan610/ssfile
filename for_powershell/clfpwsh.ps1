[Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12
Register-PSRepository -Default -Verbose
Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))
Set-ExecutionPolicy AllSigne
install-Module PSColor -AllowPrerelease -Scope CurrentUser -Force
Install-Module DirColors -AllowPrerelease -Scope CurrentUser -Force
install-Module ZLocation -AllowPrerelease -Scope CurrentUser -Force
install-Module PSReadLine -AllowPrerelease -Scope CurrentUser -Force
oh-my-posh init
PowerShellGet\Install-Module posh-git -AllowPrerelease -Scope CurrentUser -Force
Install-Module ZLocation -Scope CurrentUser
irm https://ghproxy.com/https://raw.githubusercontent.com/duzyn/scoop-cn/master/install.ps1 | iex
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
iwr https://community.chocolatey.org/install.ps1 -UseBasicParsing | iex
scoop install aria2
scoop config aria2-retry-wait 4
scoop config aria2-split 1024
scoop config aria2-max-connection-per-server 16
scoop config aria2-min-split-size 4M
scoop install git
scoop bucket rm main
scoop bucket add dorado https://kgithub.com/chawyehsu/dorado
scoop bucket add versions https://kgithub.com/ScoopInstaller/Versions
scoop bucket add extras https://kgithub.com/ScoopInstaller/Extras
scoop bucket add nerd-fonts https://kgithub.com/matthewjberger/scoop-nerd-fonts
scoop bucket add java https://kgithub.com/ScoopInstaller/Java
scoop bucket add nonportable https://kgithub.com/TheRandomLabs/scoop-nonportable
scoop bucket add nirsoft https://kgithub.com/kodybrown/scoop-nirsoft
scoop bucket add MorFans-apt https://kgithub.com/Paxxs/Cluttered-bucket
scoop bucket add spc https://kgithub.com/lzwme/scoop-proxy-cn
scoop config SCOOP_REPO https://ghproxy.com/github.com/ScoopInstaller/Scoop
scoop bucket add main https://ghproxy.com/github.com/ScoopInstaller/Main
scoop bucket add games https://kgithub.com/Calinou/scoop-games
scoop bucket add RandomLabs https://kgithub.com/TheRandomLabs/Scoop-Bucket
scoop bucket add sc https://kgithub.com/duzyn/scoop-cn
scoop install git sudo python nano yesplaymusic Meslo-NF-Mono Meslo-NF
echo 你好，屏幕前的人，我想拜托你一件事情：请您先按下“Ctrl+,”快捷键，然后点击配置文件下的默认值，再点击外观选项，在字体栏上选择MesloLGL Nerd Font并回到这个标签页按下Enter键，谢谢
echo 另外，如果报错请点击确定，并不用做任何事情，谢谢(●'◡'●)
pause
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
rich -p "[green]基本完成╰(*°▽°*)╯"
rich -p "[cyan]若想修改艺术字，请运行 [yellow]notepad $profile[cyan]并更新[yellow]python -m pyfiglet --color=LIGHT_CYAN [cyan]后的内容（别动引号）谢谢"



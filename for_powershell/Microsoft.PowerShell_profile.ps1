cls
python -m pyfiglet --color=LIGHT_CYAN "Lan's Powershell"
doskey ls=dir /b $*
doskey ll=dir /ONE $*
doskey cat=type $*
doskey rm=del $*
doskey mv=move $*
doskey cd=cd /d $*
doskey pwd=cd
doskey mkdir=md $*
doskey lt=dir /OD $*
doskey traceroute=tracert $*
doskey tracepath=pathping $*
doskey ifconfig=ipconfig $*
doskey clear=cls
doskey alias=doskey /macros
doskey pash=PowerShell $*
doskey history=doskey  /history
doskey scpi=scoop install $*
doskey scpup=scoop update $*
doskey scpui=scoop uninstall $*
doskey scp=scoop $*
doskey pipi=pip install $*
doskey pipu=pip uninstall $*
doskey chocoi=choco install $*
doskey chocoui=choco uninstall $*
doskey chocoup=choco upgrade $*
doskey chinfo=choco info $*
doskey chi=choco $*
rich -p "[#90ee90]欢迎━(*｀∀´*)ノ亻!"
rich -p "[#90ee90]若想查看命令别名，请运行alias命令"
Import-Module posh-git
Import-Module ZLocation
Import-Module PSReadLine
Import-Module DirColors
oh-my-posh init pwsh --config ~/montys.omp.json | Invoke-Expression



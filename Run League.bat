@echo off

:: Define the paths
set "src_path=G:\Riot Games\League of Legends\LeagueClient.exe"
set "dst_path=G:\Riot Games\League of Legends\LeagueClientShortcut.lnk"

:: Step 1: Create the shortcut using PowerShell
powershell -command "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut('%dst_path%'); $s.TargetPath = '%src_path%'; $s.Arguments = '--locale=zh_CN'; $s.Save()"

:: Step 2: Run the shortcut using PowerShell
powershell -command "Start-Process -FilePath '%dst_path%'"

:: Step 3: Wait a few seconds to allow the game to launch
timeout /t 5 /nobreak > NUL

:: Step 4: Delete the shortcut
del "%dst_path%"


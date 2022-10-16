@echo off
cd\
mkdir $aur
cd $aur

ipconfig | findstr "Default Gateway" > gateway
ipconfig | findstr "IPv4" > ipv4
type gateway
type ipv4

echo "Please type the first octet (Without a period)"
set /p x=

echo "Please type the second octet (Without a period)"
set /p y=

echo "Please type the third octet (Without a period)"
set /p z=

for /L %%a in (%x%,1,255) do (
for /L %%b in (%y%,1,255) do (
for /L %%c in (%z%,1,255) do (
for /L %%d in (0,1,255) do (

ping -l 1 -n 1 %%a.%%b.%%c.%%d > test

echo pinging %%a.%%b.%%c.%%d
)
)
)
)
Footer
© 2022 GitHub, Inc.
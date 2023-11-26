@ setlocal enableextensions 
@ cd /d "%~dp0"

for /R %%f in (*.*) do (
  netsh advfirewall firewall add rule name="BlockedByScript: %%f" dir=in program="%%f" action=block
  netsh advfirewall firewall add rule name="BlockedByScript: %%f" dir=out program="%%f" action=block
	
)
pause
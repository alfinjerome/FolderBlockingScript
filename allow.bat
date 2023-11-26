@ setlocal enableextensions 
@ cd /d "%~dp0"

for /R %%f in (*.*) do (
  netsh advfirewall firewall add rule name="AllowedByScript: %%f" dir=in program="%%f" action=allow
  netsh advfirewall firewall add rule name="AllowedByScript: %%f" dir=out program="%%f" action=allow
	
)
pause
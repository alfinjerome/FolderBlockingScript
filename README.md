### Folder blocking script for windows firewall

The above .bat files are used to block or allow a file to pass through the firewall. It does not matter what type of file it is, whether it is .exe, .bat, .cmd, .ppt, etc., it would not allow any file to pass through the firewall.

PS: It might be overkill :)

**What is happening in the script? :-**

`@ setlocal enableextensions` 
`@ cd /d "%~dp0"`

`for /R %%f in (*.*) do (`
  `netsh advfirewall firewall add rule name="BlockedByScript: %%f" dir=in program="%%f" action=block`
  `netsh advfirewall firewall add rule name="BlockedByScript: %%f" dir=out program="%%f" action=block`
`)`
`pause`

- `@ setlocal enable extensions` is used to 
- `@ cd /d "%~dp0"` is
-  `for /R %%f in (*.*) do(` is
-  `netsh advfirewall firewall add rule` is to add a rule .... . There are 4 arguments here: `name` is used to add a name to the rule while the `f` in `%%f` is a pathname format letter.
`dir` shows the direction in which firewall is placed, i.e, inbound or outbound. `program` is the file which we want to allow/block and `action` is the action to be taken.
- `pause` is to pause the program after executing the commands.

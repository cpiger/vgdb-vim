Set   objArgs   =   WScript.Arguments  
dim vgdbargs
vgdbargs = "cmd /c vgdb.bat"
For   i   =   0   to   objArgs.Count   -   1  
    vgdbargs = vgdbargs + " " + objArgs(i)
Next  
Set ws = CreateObject("Wscript.Shell")
ws.run vgdbargs,vbhide

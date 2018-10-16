#include <HotString.au3>
HotKeySet("^g", googleSearch)
HotStringSet("/g{ENTER}", GoogleSearch)
Global $sOldClip

While 1
Sleep(10)
WEnd

Func GoogleSearch()
$sOldClip = ClipGet()
Send("^c")
ShellExecute("https://www.google.com/search?q=" & ClipGet())
ClipPut($sOldClip)
EndFunc
#include <HotString.au3>
HotKeySet("^g", googleSearch)

HotStringSet("/g{ENTER}", GoogleSearch)
HotStringSet("/b{ENTER}", BaiduSearch)
HotStringSet("/yd{ENTER}", YouDao)
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

Func BaiduSearch()
$sOldClip = ClipGet()
Send("^c")
ShellExecute("https://www.baidu.com/s?wd=" & ClipGet())
ClipPut($sOldClip)
EndFunc

Func YouDao()
$sOldClip = ClipGet()
Send("^c")
ShellExecute("https://dict.youdao.com/w/eng/" & ClipGet())
ClipPut($sOldClip)
EndFunc
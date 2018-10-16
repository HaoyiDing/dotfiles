Set WshShell = CreateObject("WScript.Shell")
do
    Randomize
    WScript.Sleep Int((1000- 500+ 1) * Rnd + 500)
    WshShell.SendKeys "{END}"
    WScript.Sleep Int((1000- 500+ 1) * Rnd + 500)
    WshShell.SendKeys "{HOME}"
loop

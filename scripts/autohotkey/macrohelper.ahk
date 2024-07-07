#Requires AutoHotkey v2.0

; Copy mouse coordinates to clipboard when pressing KP enter
NumpadEnter::
{
    MouseGetPos(&xpos, &ypos)
    copytext := xpos ", " ypos
    A_Clipboard := copytext
    ; Show on screen
    textgui := Gui()
    textgui.Opt("-Caption +AlwaysOnTop")
    textgui.BackColor := "000000"
    textgui.SetFont("s16 w700 cWhite", "Times New Roman")
    textgui.Add("Text", "x45 y0 w128 h20", copytext)
    textgui.Opt("+LastFound")
    ;WinSetTransColor("EEAA99", textgui)
    textgui.Show()
    ; Go away after 2 seconds
    Sleep(2000)
    textgui.Hide()
}

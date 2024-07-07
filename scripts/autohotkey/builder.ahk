#Requires AutoHotkey v2.0

; target monitor resolution: 1440x900

; roblox studio in full screen with properties window anchored to bottom right
; appearance and data tabs are collapsed
; transform tab is open
; size and position fields are expanded, cframe field is collapsed
; position z is the last visible field in the properties window

; hammer++ on immediate alt tab

; on KP minus, start operation
NumpadSub::
{
    ; go to mouse coordinate and click to select size X
    ; ctrl+c to copy and save as variable size_x
    MouseMove(1415, 509)
    Click()
    Send("^c")
    Sleep(100)
    size_x := A_Clipboard
    Sleep(200)
    ; go to mouse coordinate and click to select size Y
    ; ctrl+c to copy and save as variable size_y
    MouseMove(1415, 531)
    Click()
    Send("^c")
    Sleep(100)
    size_y := A_Clipboard
    Sleep(200)
    ; go to mouse coordinate and click to select size Z
    ; ctrl+c to copy and save as variable size_z
    MouseMove(1415, 553)
    Click()
    Send("^c")
    Sleep(100)
    size_z := A_Clipboard
    Sleep(200)
    ; go to mouse coordinate and click to select position X
    ; ctrl+c to copy and save as variable pos_x
    MouseMove(1416, 637)
    Click()
    Send("^c")
    Sleep(100)
    pos_x := A_Clipboard
    Sleep(200)
    ; go to mouse coordinate and click to select position Y
    ; ctrl+c to copy and save as variable pos_y
    MouseMove(1417, 657)
    Click()
    Send("^c")
    Sleep(100)
    pos_y := A_Clipboard
    Sleep(200)
    ; go to mouse coordinate and click to select position Z
    ; ctrl+c to copy and save as variable pos_z
    MouseMove(1417, 678)
    Click()
    Send("^c")
    Sleep(100)
    pos_z := A_Clipboard
    Sleep(200)
    ; go to mouse coordinate and click to select rotation X
    ; ctrl+c to copy and save as variable rot_x
    MouseMove(1417, 720)
    Click()
    Send("^c")
    Sleep(100)
    rot_x := A_Clipboard
    Sleep(200)
    ; go to mouse coordinate and click to select rotation Y
    ; ctrl+c to copy and save as variable rot_y
    MouseMove(1417, 741)
    Click()
    Send("^c")
    Sleep(100)
    rot_y := A_Clipboard
    Sleep(200)
    ; go to mouse coordinate and click to select rotation Z
    ; ctrl+c to copy and save as variable rot_z
    MouseMove(1417, 762)
    Click()
    Send("^c")
    Sleep(100)
    rot_z := A_Clipboard
    Sleep(200)
    ; values need to be multiplied by 12
    pos_x *= 12
    pos_y *= 12
    pos_z *= 12
    size_x *= 12
    size_y *= 12
    size_z *= 12
    ; flip x values
    pos_x *= -1
    rot_x *= -1
    rot_z *= -1
    size_x *= -1
    ; fix rotation (180 degrees because of flipped X, aka Y -> Z fix)
    ; round all values to nearest integer
    ;size_x := Round(size_x)
    ;size_y := Round(size_y)
    ;size_z := Round(size_z)
    ;pos_x := Round(pos_x)
    ;pos_y := Round(pos_y)
    ;pos_z := Round(pos_z)
    ;rot_x := Round(rot_x)
    ;rot_y := Round(rot_y)
    ;rot_z := Round(rot_z)
    ; msgbox with values
    ;MsgBox("Size: " size_x ", " size_y ", " size_z "`nPosition: " pos_x ", " pos_y ", " pos_z "`nRotation: " rot_x ", " rot_y ", " rot_z)
    ; alt tab
    Send("!{Tab}")
    Sleep(500)
    ; go to mouse coordinate and click to select block
    ;MouseMove(1198, 726)
    ;Click()
    ;Sleep(100)
    ; press ctrl+shift+g to open select brush dialog
    Send("^+g")
    Sleep(500)
    ; type 601 to select reference brush
    Send("4377")
    ;Send("4344") wedge
    ;Send("4376") cylinder
    ;Send("4377") block
    Sleep(100)
    ; press enter to apply
    Send("{Enter}")
    Sleep(200)
    ; ctrl+c to copy, ctrl+shift+v to open paste special, then press enter to paste
    Send("^c")
    Send("^+v")
    Sleep(100)
    Send("{Enter}")
    ; ctrl+m to open transform dialog on new block
    Send("^m")
    Sleep(500)
    ; press s to select scale operation
    Send("s")
    Send(" ")
    ; tab to paste X
    Send("{Tab}")
    Send(size_x)
    Sleep(100)
    ; tab to paste Y
    Send("{Tab}")
    Send(size_z)
    Sleep(100)
    ; tab to paste Z
    Send("{Tab}")
    Send(size_y)
    Sleep(100)
    ; tab to apply
    Send("{Enter}")
    Sleep(100)
    ; ctrl+m to re-open transform dialog
    Send("^m")
    Sleep(500)
    ; press m to select move operation
    Send("m")
    Send(" ")
    ; tab to paste X
    Send("{Tab}")
    Send(pos_x)
    Sleep(100)
    ; tab to paste Y
    Send("{Tab}")
    Send(pos_z)
    Sleep(100)
    ; tab to paste Z
    Send("{Tab}")
    Send(pos_y)
    Sleep(100)
    ; press enter to apply
    Send("{Enter}")
    Sleep(100)
    ; ctrl+m to re-open transform dialog
    Send("^m")
    Sleep(500)
    ; press r to select rotate operation
    Send("r")
    Send(" ")
    ; tab to paste X
    Send("{Tab}")
    Send(rot_x)
    Sleep(100)
    ; tab to paste Y
    Send("{Tab}")
    Send(rot_z)
    Sleep(100)
    ; tab to paste Z
    Send("{Tab}")
    Send(rot_y)
    Sleep(100)
    ; press enter to apply
    Send("{Enter}")
    Sleep(100)
}
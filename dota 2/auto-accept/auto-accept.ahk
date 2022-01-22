;screen ratio
SysGet, ScreenX, 0
SysGet, ScreenY, 1
xratio := (ScreenX / 1680)
yratio := (ScreenY / 1050)

~LButton::

Loop

{

Sleep 1000

GetKeyState, LButtonState, LButton, P

if LButtonState = U

Click 762*xratio, 524*yratio

}

return

F1::Pause, toggle
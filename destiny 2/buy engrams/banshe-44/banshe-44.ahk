;settings
Delay := 100

;screen ratio
SysGet, ScreenX, 0
SysGet, ScreenY, 1
xratio := (ScreenX / 1680)
yratio := (ScreenY / 1050)

;coordinates
CoordinateXengram := 1561 * xratio
CoordinateYengram := 97 * yratio
CoordinateXmaterial := 1253 * xratio
CoordinateYmaterial := 231 * yratio
CoordinateXmaterial2 := 1160 * xratio
CoordinateYmaterial2 := 216 * yratio

#MaxThreadsPerHotkey 2
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

G:: ;key for activation

Toggle := !Toggle

Loop {
    if( !Toggle ) {
        break
    }
    Click %CoordinateXengram%, %CoordinateYengram%
    sleep, %Delay%
    Click %CoordinateXmaterial%, %CoordinateYmaterial%
    sleep, %Delay%
    Click %CoordinateXmaterial2%, %CoordinateYmaterial2%
    sleep, %Delay%
}

return

!G::  ;close script alt+g
ExitApp
﻿#MaxThreadsPerHotkey 2
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

G::
;Tooltip, Doing Dismantle!
Toggle := !Toggle

Loop 
{
	if( !Toggle ) {
        break
	}
	MouseClick, left
	sleep, 80
}

return

!G::  ;close script alt+g
ExitApp
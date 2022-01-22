#MaxThreadsPerHotkey 2
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

G::
Toggle := !Toggle
Loop 
{
	if( !Toggle ) {
        break
	}
	send {f down}
	sleep, 1100
	send {f up}
	sleep, 700
}

!G::  ;close script alt+g
ExitApp
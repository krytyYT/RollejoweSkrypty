#NoEnv
#SingleInstance, Force
; Napisane przez krytyYT w 2020 roku! Projekt na licencji GNU v3.0
; Napisane przez krytyYT w 2020 roku! Projekt na licencji GNU v3.0
; Napisane przez krytyYT w 2020 roku! Projekt na licencji GNU v3.0
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 1
SetBatchLines, -1
SetMouseDelay, -1
SetKeyDelay, 0
IniRead, set1, config.ini, przyciski, key1
IniRead, punch22, config.ini, przyciski, key2
IniRead, punch3, config.ini, przyciski, key3
IniRead, efekty4, config.ini, przyciski, key4
IniRead, schowek5, config.ini, przyciski, key5
IniRead, miecz6, config.ini, przyciski, key6
IniRead, wedka7, config.ini, przyciski, key7
IniRead, wedka8, config.ini, przyciski, key8
IniRead, perla9, config.ini, przyciski, key9
IniRead, perla10, config.ini, przyciski, key10
Gui Add, Hotkey, x100 y8 w125 h21 vsecik
Gui Add, Text, x10 y6 w78 h23 +0x200, Bind Seta
Gui Add, Hotkey, x100 y35 w125 h21 vefekty
Gui Add, Text, x10 y33 w78 h23 +0x200, Bind Efektow
Gui Add, Hotkey, x100 y63 w125 h21 vschowek
Gui Add, Text, x10 y60 w78 h23 +0x200, Bind Schowka
Gui Add, Hotkey, x100 y93 w125 h21 vpunch
Gui Add, Text, x10 y90 w78 h23 +0x200, Bind Puncha
Gui Add, Edit, x100 y123 w125 h21 vpunch2
Gui Add, Text, x10 y120 w78 h23 +0x200, Slot Puncha
Gui Add, Edit, x100 y153 w125 h21 vmiecz
Gui Add, Text, x10 y153 w78 h23, Slot Miecza
Gui Add, Hotkey, x100 y183 w125 h21 vwedka
Gui Add, Text, x10 y181 w78 h23 +0x200, Bind Wedki
Gui Add, Edit, x100 y213 w125 h21 vwedka2
Gui Add, Text, x10 y211 w78 h23 +0x200, Slot Wedki
Gui Add, Hotkey, x100 y243 w125 h21 vperla
Gui Add, Text, x10 y241 w78 h23 +0x200, Bind Perly
Gui Add, Edit, x100 y273 w125 h21 vperla2
Gui Add, Text, x10 y271 w78 h23 +0x200, Slot Perly
Gui Add, Text, x20 y300 w214 h23 +0x200, Autor krytyYT napisane na kanal Rollej
Gui Add, Button, x3 y340 w226 h33 gGO, &Odpalaj machine
Gui Show, w230 h400, Rollejowe Skrypty || Coded by krytyYT
GuiControl, , msctls_hotkey321, %set1%
GuiControl, , msctls_hotkey322, %punch22%
GuiControl, , punch2, %punch3%
GuiControl, , msctls_hotkey323, %efekty4%
GuiControl, , msctls_hotkey324, %schowek5%
GuiControl, , miecz, %miecz6%
GuiControl, , msctls_hotkey325, %wedka7%
GuiControl, , wedka2, %wedka8%
GuiControl, , msctls_hotkey326, %perla9%
GuiControl, , perla2, %perla10%
Return
GO:
GUI, submit, NoHide
MsgBox, Zapisano ustawienia!
hotkey, ~*%secik%, zmianaseta
hotkey, ~*%punch%, punch
hotkey, ~*%efekty%, efekty
hotkey, ~*%schowek%, schowek
hotkey, ~*%wedka%, wedka
hotkey, ~*%perla%, perla
IniWrite, %secik%, config.ini, Przyciski, key1
IniWrite, %punch%, config.ini, Przyciski, key2
IniWrite, %punch2%, config.ini, Przyciski, key3
IniWrite, %efekty%, config.ini, Przyciski, key4
IniWrite, %schowek%, config.ini, Przyciski, key5
IniWrite, %miecz%, config.ini, Przyciski, key6
IniWrite, %wedka%, config.ini, Przyciski, key7
IniWrite, %wedka2%, config.ini, Przyciski, key8
IniWrite, %perla%, config.ini, Przyciski, key9
IniWrite, %perla2%, config.ini, Przyciski, key10
MAIN()
return
MAIN(){
sleep 5
}
Komenda(string){
SendInput {T}
sleep 50
Send /%string%
sleep 75
SendInput {Enter}
sleep 75
}
return
wedka:
{
	send %wedka2%
	send {RButton}
	sleep 123
	send %miecz%
}
return
perla:
{
	send %perla2%
	send {RButton}
	sleep 123
	send %miecz%
}
return
schowek:
{
	Komenda("schowek")
	sleep 200
	MouseGetPos, X, Y
	X2 := X
	Y2 := Y - 35
	SendInput {click left %X2%, %Y2%}
	send {ESC}
}
return
efekty:
{
	Komenda("efekty")
	sleep 200
	MouseGetPos, X, Y
	X2 := X + 99
	Y2 := Y - 66
	SendInput {click left %X2%, %Y2%}
}
return
punch:
{
	IfWinnotActive, Minecraft
		return
	send %punch2%
	send {lctrl down}
	sleep 1
	send {Rbutton down}
	sleep 152
	send {Rbutton up}
	send {s}
	sleep 1
	send {lctrl up}
}
return
zacznijbiec()
{
	sleep 10
	send w
	send {w down}
	sleep 20
	send {ctrl down}
	sleep 50
	send {CTRL up}
	SetTimer, wchecker, 10
	return
}
wchecker()
{
	if GetKeyState("w","P-")= 0
	{
	send {w up}
	SetTimer, wchecker, off
	}
	return
}
zmianaseta()
{
	IfWinnotActive, Minecraft
	return
	if GetKeyState("w","P-")= 1
	{
		send {w up}
		biegnij = 1
		sleep 20
	}
	BlockInput, On
	send e
	sleep 40
	MouseGetPos, X, Y
	X2 := X - 147
	Y2 := Y + 18
	X3 := X2
	Y3 := Y2 - 160
	loop 4 {
		sendinput {click left %X2%, %Y2%}
		sendinput {click left %X3%, %Y3%}
		sendinput {click left %X2%, %Y2%}
		X2 := X2 + 33
		Y3 := Y3 + 33
	}
	sleep 40
	send e
	BlockInput, Off
	if (biegnij = 1)
{
zacznijbiec()
biegnij = 0
}
return
}
PostClick(x,y,win="A") {
lParam := x & 0xFFFF | (y & 0xFFFF) << 16
PostMessage, 0x201, , %lParam%, , %win%
PostMessage, 0x202, , %lParam%, ,  %win%
return
}
type(value){
send {LCTRL UP}
SendInput {CTRL UP}
BlockInput, On
SendInput {/}
sleep 100
SendInput {Blind}%value%{ENTER}
BlockInput, Off
return
}
czekaj()
{
MouseGetPos, x, y
Check_x := x + 52
Check_y := y - 149
startTime := A_TickCount
sleep 20
loop {
sleep 2
if A_Cursor != Unknown
return
now := A_TickCount - startTime
if (now > 1000){
przerwij = 1
BlockInput, off
return
}
}
return
}
exit:
exitapp
return
GuiEscape:
GuiClose:
ExitApp
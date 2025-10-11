#Requires AutoHotkey v2.0

ShowDesktop() {
    try {
        shell := ComObject("Shell.Application")
        shell.MinimizeAll()
		Send("#d")                  ; Simulate Win+D
    } catch {
        MsgBox("Fehler beim Anzeigen des Desktops")
    }
}

; Unsichtbares Besitzerfenster erstellen
ownerGui := Gui("+Owner")
ownerGui.Show("Hide")

; Hauptfenster erstellen mit Besitzerbindung
mainGui := Gui("+Owner" ownerGui.Hwnd " -Caption -Border", "Desktop")
;mainGui.Add("Picture", "x0 y0 w1650 h1080", "c:\path\kmonad\Desktop.jpg")

mainGui.Show("w1650 h900")
WinMinimize(mainGui.Hwnd)

; Handle window activation (WM_ACTIVATE = 0x0006)

OnMessage(0x0006, (wParam, lParam, msg, hwnd) => (
    hwnd = mainGui.Hwnd ? ( ShowDesktop(), WinMinimize(mainGui.Hwnd)) : ""
))

; Show desktop when left mouse button is clicked (WM_LBUTTONDOWN = 0x0201)
OnMessage(0x0201, (wParam, lParam, msg, hwnd) => ( 
	hwnd = mainGui.Hwnd ? ( ShowDesktop(),WinMinimize(mainGui.Hwnd) ) : ""
))


mainGui.OnEvent("Close", (*) => ExitApp())

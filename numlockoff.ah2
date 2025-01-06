#Requires AutoHotKey 2
#NoTrayIcon
state := GetKeyState("NumLock", "T")
if (state) {
	SetNumLockState False
}

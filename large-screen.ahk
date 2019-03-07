^#Up::
	SysGet, WA_, MonitorWorkArea
	A_ScreenWidthWA:=WA_Right-WA_Left
	A_ScreenHeightWA:=WA_Bottom-WA_Top

	WinGetActiveTitle, Title
	WinRestore, %Title%
	WinGetActiveStats, Title, Width, Height, X, Y

	FourthWidth := Floor(A_ScreenWidth / 4)
	ThirdWidth := Floor(A_ScreenWidth / 3)
	HalfWidth := Floor(A_ScreenWidth / 2)

	WinMove, %Title%,, A_ScreenWidthWA - FourthWidth * 3, Y, FourthWidth * 2, A_ScreenHeightWA
Return

^#Down::
Return

^#Left::
	SysGet, WA_, MonitorWorkArea
	A_ScreenWidthWA:=WA_Right-WA_Left
	A_ScreenHeightWA:=WA_Bottom-WA_Top

	WinGetActiveTitle, Title
	WinRestore, %Title%
	WinGetActiveStats, Title, Width, Height, X, Y

	FourthWidth := Floor(A_ScreenWidth / 4)
	ThirdWidth := Floor(A_ScreenWidth / 3)
	HalfWidth := Floor(A_ScreenWidth / 2)

	WinMove, %Title%,, 0, Y, FourthWidth, A_ScreenHeightWA
Return

^#Right::
	SysGet, WA_, MonitorWorkArea
	A_ScreenWidthWA:=WA_Right-WA_Left
	A_ScreenHeightWA:=WA_Bottom-WA_Top

	WinGetActiveTitle, Title
	WinRestore, %Title%
	WinGetActiveStats, Title, Width, Height, X, Y

	FourthWidth := Floor(A_ScreenWidth / 4)
	ThirdWidth := Floor(A_ScreenWidth / 3)
	HalfWidth := Floor(A_ScreenWidth / 2)

	WinMove, %Title%,, A_ScreenWidthWA - FourthWidth, Y, FourthWidth, A_ScreenHeightWA
Return

NumberOfCols := 4
NumberOfRows := 2

SysGet, WA_, MonitorWorkArea
A_ScreenWidthWA:=WA_Right-WA_Left
A_ScreenHeightWA:=WA_Bottom-WA_Top

#Up::
	WinGetActiveTitle, Title
	WinRestore, %Title%
	WinGetActiveStats, Title, Width, Height, X, Y

	If (Height = A_ScreenHeightWA / NumberOfRows)
	{
		WinMove, %Title%,, X, 0, Width, A_ScreenHeightWA
	}
	Else
	{
		WinMove, %Title%,, X, 0, Width, A_ScreenHeightWA / NumberOfRows
	}
Return

#Down::
	WinGetActiveTitle, Title
	WinRestore, %Title%
	WinGetActiveStats, Title, Width, Height, X, Y

	If (Height = A_ScreenHeightWA / NumberOfRows)
	{
		WinMove, %Title%,, X, 0, Width, A_ScreenHeightWA
	}
	Else
	{
		WinMove, %Title%,, X, A_ScreenHeightWA / NumberOfRows, Width, A_ScreenHeightWA / NumberOfRows
	}
Return

#Left::
Return

#Right::
Return

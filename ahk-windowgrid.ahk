; Do not change these, the logic is hardcoded for now, but might be dynamic in the future:
NumberOfCols := 4
NumberOfRows := 2

SysGet, WA_, MonitorWorkArea
A_ScreenWidthWA:=WA_Right-WA_Left
A_ScreenHeightWA:=WA_Bottom-WA_Top

^#Up::
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

^#Down::
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

^#Left::
	WinGetActiveTitle, Title
	WinRestore, %Title%
	WinGetActiveStats, Title, Width, Height, X, Y

	NewWidth := A_ScreenWidthWA / NumberOfCols

	If (X = A_ScreenWidthWA - NewWidth * 3 And Width = NewWidth)
	{
		WinMove, %Title%,, A_ScreenWidthWA - NewWidth * 4, Y, NewWidth, Height
	}
	Else If (X = A_ScreenWidthWA - NewWidth * 2 And Width = NewWidth)
	{
		WinMove, %Title%,, A_ScreenWidthWA - NewWidth * 3, Y, NewWidth, Height
	}
	Else If (X = A_ScreenWidthWA - NewWidth And Width = NewWidth)
	{
		WinMove, %Title%,, A_ScreenWidthWA - NewWidth * 2, Y, NewWidth, Height
	}
	Else
	{
		WinMove, %Title%,, A_ScreenWidthWA - NewWidth, Y, NewWidth, Height
	}
Return

^#Right::
	WinGetActiveTitle, Title
	WinRestore, %Title%
	WinGetActiveStats, Title, Width, Height, X, Y

	NewWidth := A_ScreenWidthWA / NumberOfCols

	If (X = A_ScreenWidthWA - NewWidth * 2 And Width = NewWidth)
	{
		WinMove, %Title%,, A_ScreenWidthWA - NewWidth, Y, NewWidth, Height
	}
	Else If (X = A_ScreenWidthWA - NewWidth * 3 And Width = NewWidth)
	{
		WinMove, %Title%,, A_ScreenWidthWA - NewWidth * 2, Y, NewWidth, Height
	}
	Else If (X = A_ScreenWidthWA - NewWidth * 4 And Width = NewWidth)
	{
		WinMove, %Title%,, A_ScreenWidthWA - NewWidth * 3, Y, NewWidth, Height
	}
	Else
	{
		WinMove, %Title%,, A_ScreenWidthWA - NewWidth * 4, Y, NewWidth, Height
	}
Return

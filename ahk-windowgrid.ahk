^#Up::
	NumberOfCols := 4
	NumberOfRows := 2
	SysGet, WA_, MonitorWorkArea
	A_ScreenWidthWA:=WA_Right-WA_Left
	A_ScreenHeightWA:=WA_Bottom-WA_Top

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
	NumberOfCols := 4
	NumberOfRows := 2
	SysGet, WA_, MonitorWorkArea
	A_ScreenWidthWA:=WA_Right-WA_Left
	A_ScreenHeightWA:=WA_Bottom-WA_Top

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
	SysGet, WA_, MonitorWorkArea
	A_ScreenWidthWA:=WA_Right-WA_Left
	A_ScreenHeightWA:=WA_Bottom-WA_Top

	WinGetActiveTitle, Title
	WinRestore, %Title%
	WinGetActiveStats, Title, Width, Height, X, Y

	FourthWidth := Floor(A_ScreenWidth / 4)
	ThirdWidth := Floor(A_ScreenWidth / 3)
	HalfWidth := Floor(A_ScreenWidth / 2)

	If (X = 0 And Width = ThirdWidth)
	{
		WinMove, %Title%,, 0, Y, FourthWidth, Height
	}
	Else If (X = A_ScreenWidthWA - FourthWidth * 3 And Width = FourthWidth)
	{
		WinMove, %Title%,, 0, Y, ThirdWidth, Height
	}
	Else If (X = A_ScreenWidthWA - FourthWidth * 3 And Width = FourthWidth * 2)
	{
		WinMove, %Title%,, A_ScreenWidthWA - FourthWidth * 3, Y, FourthWidth, Height
	}
	Else If (X = A_ScreenWidthWA - ThirdWidth * 2 And Width = ThirdWidth)
	{
		WinMove, %Title%,, A_ScreenWidthWA - FourthWidth * 3, Y, FourthWidth * 2, Height
	}
	Else If (X = A_ScreenWidthWA - FourthWidth * 2 And Width = FourthWidth)
	{
		WinMove, %Title%,, A_ScreenWidthWA - ThirdWidth * 2, Y, ThirdWidth, Height
	}
	Else If (X = A_ScreenWidthWA - ThirdWidth And Width = ThirdWidth)
	{
		WinMove, %Title%,, A_ScreenWidthWA - FourthWidth * 2, Y, FourthWidth, Height
	}
	Else If (X = A_ScreenWidthWA - FourthWidth And Width = FourthWidth)
	{
		WinMove, %Title%,, A_ScreenWidthWA - ThirdWidth, Y, ThirdWidth, Height
	}
	Else
	{
		WinMove, %Title%,, A_ScreenWidthWA - FourthWidth, Y, FourthWidth, Height
	}
Return

^#Right::
	; NumberOfCols := 4
	; NumberOfRows := 2
	; SysGet, WA_, MonitorWorkArea
	; A_ScreenWidthWA:=WA_Right-WA_Left
	; A_ScreenHeightWA:=WA_Bottom-WA_Top

	; WinGetActiveTitle, Title
	; WinRestore, %Title%
	; WinGetActiveStats, Title, Width, Height, X, Y

	; NewWidth := A_ScreenWidthWA / NumberOfCols

	; If (X = A_ScreenWidthWA - NewWidth * 2 And Width = NewWidth)
	; {
	; 	WinMove, %Title%,, A_ScreenWidthWA - NewWidth, Y, NewWidth, Height
	; }
	; Else If (X = A_ScreenWidthWA - NewWidth * 3 And Width = NewWidth)
	; {
	; 	WinMove, %Title%,, A_ScreenWidthWA - NewWidth * 2, Y, NewWidth, Height
	; }
	; Else If (X = A_ScreenWidthWA - NewWidth * 4 And Width = NewWidth)
	; {
	; 	WinMove, %Title%,, A_ScreenWidthWA - NewWidth * 3, Y, NewWidth, Height
	; }
	; Else
	; {
	; 	WinMove, %Title%,, A_ScreenWidthWA - NewWidth * 4, Y, NewWidth, Height
	; }
Return

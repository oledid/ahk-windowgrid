^#Up::
	SysGet, WA_, MonitorWorkArea
	A_ScreenHeightWA:=WA_Bottom-WA_Top

	WinGetActiveTitle, Title
	WinRestore, %Title%
	WinGetActiveStats, Title, Width, Height, X, Y

	If (Height = A_ScreenHeightWA / 2)
	{
		WinMove, %Title%,, X, 0, Width, A_ScreenHeightWA
	}
	Else
	{
		WinMove, %Title%,, X, 0, Width, A_ScreenHeightWA / 2
	}
Return

^#Down::
	SysGet, WA_, MonitorWorkArea
	A_ScreenHeightWA:=WA_Bottom-WA_Top

	WinGetActiveTitle, Title
	WinRestore, %Title%
	WinGetActiveStats, Title, Width, Height, X, Y

	If (Height = A_ScreenHeightWA / 2)
	{
		WinMove, %Title%,, X, 0, Width, A_ScreenHeightWA
	}
	Else
	{
		WinMove, %Title%,, X, A_ScreenHeightWA / 2, Width, A_ScreenHeightWA / 2
	}
Return

^#Left::
	SysGet, WA_, MonitorWorkArea
	A_ScreenWidthWA:=WA_Right-WA_Left

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
	SysGet, WA_, MonitorWorkArea
	A_ScreenWidthWA:=WA_Right-WA_Left

	WinGetActiveTitle, Title
	WinRestore, %Title%
	WinGetActiveStats, Title, Width, Height, X, Y

	FourthWidth := Floor(A_ScreenWidth / 4)
	ThirdWidth := Floor(A_ScreenWidth / 3)
	HalfWidth := Floor(A_ScreenWidth / 2)

	If (X = A_ScreenWidthWA - ThirdWidth And Width = ThirdWidth)
	{
		WinMove, %Title%,, A_ScreenWidthWA - FourthWidth, Y, FourthWidth, Height
	}
	Else If (X = A_ScreenWidthWA - FourthWidth * 2 And Width = FourthWidth)
	{
		WinMove, %Title%,, A_ScreenWidthWA - ThirdWidth, Y, ThirdWidth, Height
	}
	Else If (X = A_ScreenWidthWA - ThirdWidth * 2 And Width = ThirdWidth)
	{
		WinMove, %Title%,, A_ScreenWidthWA - FourthWidth * 2, Y, FourthWidth, Height
	}
	Else If (X = A_ScreenWidthWA - FourthWidth * 3 And Width = FourthWidth * 2)
	{
		WinMove, %Title%,, A_ScreenWidthWA - ThirdWidth * 2, Y, ThirdWidth, Height
	}
	Else If (X = A_ScreenWidthWA - FourthWidth * 3 And Width = FourthWidth)
	{
		WinMove, %Title%,, A_ScreenWidthWA - FourthWidth * 3, Y, FourthWidth * 2, Height
	}
	Else If (X = 0 And Width = ThirdWidth)
	{
		WinMove, %Title%,, A_ScreenWidthWA - FourthWidth * 3, Y, FourthWidth, Height
	}
	Else If (X = 0 And Width = FourthWidth)
	{
		WinMove, %Title%,, 0, Y, ThirdWidth, Height
	}
	Else
	{
		WinMove, %Title%,, 0, Y, FourthWidth, Height
	}
Return

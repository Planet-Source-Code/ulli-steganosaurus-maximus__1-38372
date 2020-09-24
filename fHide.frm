VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form fHide 
   BackColor       =   &H00E0E0E0&
   BorderStyle     =   3  'Fester Dialog
   Caption         =   "Stego"
   ClientHeight    =   9570
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   8940
   Icon            =   "fHide.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   638
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   596
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'Bildschirmmitte
   Begin RichTextLib.RichTextBox rtfText 
      Height          =   6675
      Left            =   135
      TabIndex        =   15
      Top             =   2115
      Width           =   4035
      _ExtentX        =   7117
      _ExtentY        =   11774
      _Version        =   393217
      Enabled         =   -1  'True
      ScrollBars      =   2
      TextRTF         =   $"fHide.frx":0CCE
   End
   Begin VB.Frame frm 
      Caption         =   "Message"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   1
      Left            =   150
      TabIndex        =   13
      Top             =   8805
      Width           =   3180
      Begin VB.Label lbUsed 
         AutoSize        =   -1  'True
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Height          =   195
         Left            =   135
         TabIndex        =   14
         Top             =   195
         Width           =   45
      End
   End
   Begin VB.CommandButton btSaveText 
      Caption         =   "<ê"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3465
      TabIndex        =   6
      ToolTipText     =   "Save text"
      Top             =   8910
      Width           =   720
   End
   Begin VB.CommandButton btLoadText 
      Caption         =   "1ê"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3450
      TabIndex        =   5
      ToolTipText     =   "Load text"
      Top             =   1635
      Width           =   720
   End
   Begin VB.Frame frm 
      Caption         =   "Packing Density"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   855
      Index           =   0
      Left            =   120
      TabIndex        =   12
      Top             =   705
      Width           =   4035
      Begin VB.OptionButton opBpB 
         Caption         =   "One Bit per &Byte"
         ForeColor       =   &H00000000&
         Height          =   405
         Left            =   2190
         Style           =   1  'Grafisch
         TabIndex        =   3
         Top             =   315
         Width           =   1470
      End
      Begin VB.OptionButton opBpP 
         Caption         =   "One Bit per &Pixel"
         ForeColor       =   &H00000000&
         Height          =   405
         Left            =   165
         Style           =   1  'Grafisch
         TabIndex        =   2
         Top             =   315
         Value           =   -1  'True
         Width           =   1470
      End
   End
   Begin VB.TextBox txPW 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   1725
      MaxLength       =   10
      PasswordChar    =   "*"
      TabIndex        =   1
      Text            =   "ULLI"
      ToolTipText     =   "Enter password"
      Top             =   225
      Width           =   2370
   End
   Begin VB.CommandButton btSave 
      Caption         =   "&Save Picture"
      Enabled         =   0   'False
      Height          =   480
      Left            =   5910
      TabIndex        =   11
      ToolTipText     =   "Save picture with hidden text"
      Top             =   9015
      Width           =   1215
   End
   Begin MSComDlg.CommonDialog cDlg 
      Left            =   1755
      Top             =   5250
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      CancelError     =   -1  'True
   End
   Begin VB.CommandButton btHide 
      Caption         =   "&Hide Text"
      Enabled         =   0   'False
      Height          =   480
      Left            =   5910
      TabIndex        =   9
      ToolTipText     =   "Hide text and show resulting picture"
      Top             =   4530
      Width           =   1215
   End
   Begin VB.CommandButton btLoad 
      Caption         =   "&Load Picture"
      Enabled         =   0   'False
      Height          =   465
      Left            =   5910
      TabIndex        =   7
      ToolTipText     =   "Load picture to hide text in"
      Top             =   15
      Width           =   1215
   End
   Begin VB.PictureBox picOrig 
      BackColor       =   &H00FFFFFF&
      Height          =   4500
      Left            =   4245
      ScaleHeight     =   4440
      ScaleWidth      =   4440
      TabIndex        =   8
      TabStop         =   0   'False
      Top             =   225
      Width           =   4500
   End
   Begin VB.PictureBox picStego 
      BackColor       =   &H00FFFFFF&
      Height          =   4500
      Left            =   4245
      ScaleHeight     =   4440
      ScaleWidth      =   4440
      TabIndex        =   10
      TabStop         =   0   'False
      Top             =   4755
      Width           =   4500
   End
   Begin VB.Label lbText 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "&Text"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   195
      Left            =   240
      TabIndex        =   4
      Top             =   1815
      Width           =   390
   End
   Begin VB.Label lbl 
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "&Enter Password"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000040&
      Height          =   195
      Left            =   255
      TabIndex        =   0
      Top             =   270
      Width           =   1335
   End
End
Attribute VB_Name = "fHide"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
DefLng A-Z

' Copyright © 2002 UMGEDV GmbH
'
' Encryption is a sensitive area of programming and there are people out there who
' sue for the craziest reasons; so I have to make the following statements and you,
' by using this code, do agree to abide by them.
'
' ******************************************************************************
' *  This software is provided "AS IS" and any express or implied warranties,  *
' *  including, but not limited to, the implied warranties of merchantability  *
' *  or fitness for a particular purpose, are disclaimed. In no event shall    *
' *  the author be liable for any direct, indirect, incidental, special,       *
' *  exemplary, or consequential damages (including, but not limited to,       *
' *  procurement of substitute goods or services; loss of use, data, or        *
' *  profits; or business interruption) however caused and on any theory of    *
' *  liability, whether in contract, strict liability, or tort (including      *
' *  negligence or otherwise) arising in any way out of the use of, or the     *
' *  impossibility to use, this software, even if advised of the possibility   *
' *  of such damage.                                                           *
' ******************************************************************************
'
' The following restrictions apply to this program code:
'
' 1 You may use this code in non-commercial applications for your own personal use.
'   If you want to use this code, or the ideas and techniques upon which this code
'   is based, in a commercial application, prior permission in writing by the author
'   is required. You can contact me via email at umgedv@aol.com
'
' 2 Any restrictions imposed by your government or other authorities regarding the
'   use of "strong encryption algorithms" must be obeyed.
'
' 3 No commitment (express or implied) is made whatsoever regarding the encryption
'   strength or security. When you use this code, privat or commercial, you do so
'   completely at your own risk.
'
' 4 These notes and restrictions must not be removed from this file.

'---------------------------------------------------------------------------------------------
#Const Test = False
'---------------------------------------------------------------------------------------------

Private Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (Destination As Any, Source As Any, ByVal Length As Long)

Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Const EM_GETFIRSTVISIBLELINE As Long = &HCE
Private Const EM_LINESCROLL          As Long = &HB6

Private Declare Sub GetObject Lib "gdi32" Alias "GetObjectA" (ByVal hObject As Long, ByVal nCount As Long, lpObject As Any)
Private Type BITMAP
    bmType                  As Long
    bmWidth                 As Long
    bmHeight                As Long
    bmWidthBytes            As Long
    bmPlanes                As Integer
    bmBitsPixel             As Integer
    bmBits                  As Long
End Type

Private PicOrigProps        As BITMAP
Private PicStegoProps       As BITMAP
Private Picbyte             As Byte
Private AndMask             As Byte
Private OrMask              As Byte
Private i, j, k
Private Pointer
Private Increment
Private Ascii

#If Test Then '-------------------------------------------------------------------------------
Private BytCount            As Long
Private ModCount            As Long
Private PicByteCompare      As Byte
#End If '-------------------------------------------------------------------------------------

Private CanQuit             As Boolean
Private SecretText          As String
Private DroppedFilename     As String

Private Const EdiMask       As String = "(00000)"
Private Const VertBar       As String = "|"
Private Const FtBmp         As String = "Bitmap Pictures (*.bmp)" & VertBar & "*.bmp"
Private Const FtJpg         As String = "JPEG Pictures (*.jpg)" & VertBar & "*.jpg"
Private Const FtRtf         As String = "RTF Text files (*.rtf)" & VertBar & "*.rtf"
Private Const FtTxt         As String = "Text files (*.txt)" & VertBar & "*.txt"
Private Const FtAll         As String = "All files (*.*)" & VertBar & "*.*"
Private Const NoSave        As String = "You haven't saved the picture yet. " & vbCrLf & vbCrLf

Private Declare Sub InitCommonControls Lib "comctl32" ()

Private Sub btHide_Click()

  Dim TopLine  As Long

    picOrig.SetFocus
    picStego = picOrig
    GetObject picStego, Len(PicStegoProps), PicStegoProps
    With PicStegoProps
        If opBpB Then
            Increment = 1
          Else 'OPBPB = FALSE/0
            Increment = .bmBitsPixel / 8
        End If
        If .bmBitsPixel = 8 Then
            OrMask = 64 'this seems quite good, but anyway...
            MsgBox "With only eight bits per pixel addressing a palette the result will probably not be satisfactory.", vbInformation
          Else 'NOT .BMBITSPIXEL...
            OrMask = 1 'use the lsb for minimum color shift
        End If
        AndMask = &HFF And Not OrMask
        If TextFits(Len(EdiMask & Format$(Len(rtfText), EdiMask) & rtfText), PicStegoProps) Then
            SecretText = Encrypt(EdiMask & Format$(Len(rtfText), EdiMask), txPW) & Encrypt(rtfText, txPW)
            Enabled = False
            Screen.MousePointer = vbHourglass

            'save textbox top line
            TopLine = SendMessage(rtfText.hWnd, EM_GETFIRSTVISIBLELINE, 0, ByVal 0) 'save text box posn

            'initialize pointer
            Pointer = .bmBits

#If Test Then '-------------------------------------------------------------------------------
            BytCount = 0
            ModCount = 0
#End If '-------------------------------------------------------------------------------------

            'hide text
            For i = 1 To Len(SecretText)

                'scroll text for a visual feedback
                rtfText.SelStart = i - 1

                For j = 0 To 7

                    'get a byte from pic
                    CopyMemory Picbyte, ByVal Pointer, 1

#If Test Then '-------------------------------------------------------------------------------
                    PicByteCompare = Picbyte
#End If '-------------------------------------------------------------------------------------

                    'set/reset/leave bit
                    Picbyte = (Picbyte And AndMask) Or IIf(Asc(Mid$(SecretText, i, 1)) And 2 ^ j, OrMask, 0)

#If Test Then '-------------------------------------------------------------------------------
                    BytCount = BytCount + 1
                    ModCount = ModCount - (Picbyte <> PicByteCompare)
#End If '-------------------------------------------------------------------------------------

                    'restore byte in pic
                    CopyMemory ByVal Pointer, Picbyte, 1

                    'inrement pointer
                    Pointer = Pointer + Increment

            Next j, i
            'done - restore text box top line position
            SendMessage rtfText.hWnd, EM_LINESCROLL, 0, ByVal TopLine - SendMessage(rtfText.hWnd, EM_GETFIRSTVISIBLELINE, 0, ByVal 0)
            Screen.MousePointer = vbDefault

#If Test Then '-------------------------------------------------------------------------------
            MsgBox ModCount & " bytes of " & BytCount & " modified, total picsize is " & .bmHeight * .bmWidth * .bmBitsPixel / 8 & " Bytes"
#End If '-------------------------------------------------------------------------------------

            btSave.Enabled = True
            Enabled = True
            picStego.Refresh
            CanQuit = False
            DoEvents
          Else 'NOT TEXTFITS(LEN(EDIMASK...
            btSave.Enabled = False
            picStego = LoadPicture(vbNullString)
            CanQuit = True
        End If
    End With 'PICSTEGOPROPS

End Sub

Private Sub btLoad_Click()

  Const Cet As String = "Can't extract text."

    On Error Resume Next
        picOrig.SetFocus
    On Error GoTo 0
    If CanQuit = False Then
        i = (MsgBox(NoSave & "Load a new picture anyway?", vbQuestion Or vbYesNo) = vbYes)
      Else 'NOT CANQUIT...
        i = True
    End If
    If i Then 'can load a new picture
        With cDlg
            If Len(DroppedFilename) Then 'file dropped
                .Filename = DroppedFilename
                DroppedFilename = vbNullString
                i = 0
              Else 'LEN(Droppedfilename) = FALSE/0
                .Filename = vbNullString
                .Flags = cdlOFNLongNames
                .Filter = FtBmp & VertBar & FtJpg & VertBar & FtAll
                .FilterIndex = 1
                On Error Resume Next
                    .ShowOpen
                    i = Err
                On Error GoTo 0
            End If
            If i = 0 Then
                DoEvents
                btSave.Enabled = False
                picStego = LoadPicture(vbNullString)
                CanQuit = True
                On Error Resume Next
                    picOrig = LoadPicture(.Filename)
                    i = Err
                On Error GoTo 0
                If i Then
                    MsgBox .Filename & vbCrLf & "is not a valid picture file.", vbCritical
                  Else 'I = FALSE/0
                    GetObject picOrig, Len(PicOrigProps), PicOrigProps
                    rtfText = vbNullString
                    If PicOrigProps.bmBitsPixel < 8 Then
                        btHide.Enabled = False
                        MsgBox "The Picture must have at least 8 Bits per Pixel.", vbCritical
                      Else 'NOT PICORIGPROPS.BMBITSPIXEL...
                        DoEvents
                        Enabled = False
                        With PicOrigProps
                            btHide.Enabled = True
                            SecretText = vbNullString
                            If .bmBitsPixel = 8 Then
                                OrMask = 64
                              Else 'NOT .BMBITSPIXEL...
                                OrMask = 1
                            End If
                            AndMask = &HFF And Not OrMask
                            If opBpB Then
                                Increment = 1
                              Else 'OPBPB = FALSE/0
                                Increment = .bmBitsPixel / 8
                            End If
                            Pointer = .bmBits
                            For i = 1 To Len(EdiMask) * 2 'get marker and length
                                Ascii = 0
                                For j = 0 To 7
                                    CopyMemory Picbyte, ByVal Pointer, 1
                                    If Picbyte And OrMask Then
                                        Ascii = Ascii Or 2 ^ j
                                    End If
                                    Pointer = Pointer + Increment
                                Next j
                                SecretText = SecretText & Chr$(Ascii)
                            Next i
                            SecretText = Decrypt(SecretText, txPW)
                            If Left$(SecretText, Len(EdiMask)) = EdiMask Then
                                'found Marker - try to extract text
                                SecretText = Mid$(SecretText, Len(EdiMask) + 2, Len(EdiMask) - 2) 'this should be the length
                                If IsNumeric(SecretText) Then
                                    Screen.MousePointer = vbHourglass
                                    k = Val(SecretText)
                                    SecretText = vbNullString
                                    For i = 1 To k
                                        Ascii = 0
                                        For j = 0 To 7
                                            CopyMemory Picbyte, ByVal Pointer, 1
                                            If Picbyte And OrMask Then
                                                Ascii = Ascii Or 2 ^ j
                                            End If
                                            Pointer = Pointer + Increment
                                        Next j
                                        SecretText = SecretText & Chr$(Ascii)
                                    Next i
                                    rtfText = Decrypt(SecretText, txPW)
                                    rtfText.SelStart = 0
                                    Display "Text extracted.", vbBlack, False
                                    Screen.MousePointer = vbDefault
                                  Else 'ISNUMERIC(SECRETTEXT) = FALSE/0
                                    Display Cet, vbRed, True
                                End If
                              Else 'NOT LEFT$(SECRETTEXT,...
                                Display Cet, vbRed, True
                            End If
                        End With 'PICORIGPROPS
                        btHide.Enabled = True
                        Enabled = True
                    End If
                End If
            End If
        End With 'CDLG
    End If

End Sub

Private Sub btLoadText_Click()

    With cDlg
        .Filename = ModifyFilename(.Filename, "")
        .Flags = cdlOFNLongNames
        .Filter = FtRtf & VertBar & FtTxt & VertBar & FtAll
        .FilterIndex = 1
        On Error Resume Next
            .ShowOpen
            i = Err
        On Error GoTo 0
        If i = 0 Then
            rtfText = ""
            DoEvents
            i = FreeFile
            Open .Filename For Input As i
            If .FilterIndex = 1 Then
                rtfText = Input(LOF(i) - 1, i)
              Else 'NOT .FILTERINDEX...
                rtfText.Text = Input(LOF(i) - 1, i)
            End If
            Close i
            Display "Text loaded.", vbBlack, False
        End If
    End With 'CDLG

End Sub

Private Sub btSave_Click()

    picOrig.SetFocus
    With cDlg
        .Filename = ModifyFilename(.Filename, "bmp")
        .Flags = cdlOFNLongNames Or cdlOFNOverwritePrompt
        .Filter = FtBmp
        .FilterIndex = 1
        On Error Resume Next
            .ShowSave
            If Err = 0 Then
                DoEvents
                SavePicture picStego, .Filename
                CanQuit = True
            End If
        On Error GoTo 0
    End With 'CDLG

End Sub

Private Sub btSaveText_Click()

    picOrig.SetFocus
    With cDlg
        .Filename = ModifyFilename(.Filename, "")
        .Flags = cdlOFNLongNames Or cdlOFNOverwritePrompt
        .Filter = FtRtf & VertBar & FtTxt
        .FilterIndex = 1
        On Error Resume Next
            .ShowSave
            i = Err
        On Error GoTo 0
        If i = 0 Then
            DoEvents
            i = FreeFile
            ModifyFilename .Filename, IIf(.FilterIndex = 1, "rtf", "txt")
            Open .Filename For Output As i
            Print #i, IIf(.FilterIndex = 1, rtfText, rtfText.Text)
            Close i
        End If
    End With 'CDLG

End Sub

Private Function CRC4(Text As String, Key As String) As String

  'Found at PSC and modified to include keylength
  'The version found at PSC would accept abc and abcabc for example as identical keys :-((

  Dim X(0 To 255), Y(0 To 256)

    For i = 0 To 255
        X(i) = i
    Next i
    i = 0
    j = Len(Key) + 1
    Do
        If j > Len(Key) Then
            j = 1
            Y(i) = Len(Key)
            i = i + 1
        End If
        Y(i) = Asc(Mid$(Key, j, 1))
        j = j + 1
        i = i + 1
    Loop Until i > 255
    j = 0
    For i = 0 To 255
        j = (j + X(i) + Y(i)) Mod 256
        GoSub Swap
    Next i
    i = 0
    j = 0
    For k = 1 To Len(Text)
        i = (i + 1) Mod 256
        j = (j + X(i)) Mod 256
        GoSub Swap
        CRC4 = CRC4 & Chr$(Asc(Mid$(Text, k, 1)) Xor X((X(i) + (X(j) Mod 256)) Mod 256))
    Next k

Exit Function

Swap:
    X(i) = X(i) Xor X(j)
    X(j) = X(j) Xor X(i)
    X(i) = X(i) Xor X(j)
    Return

End Function

Private Function Decrypt(Text As String, Key As String) As String

    Decrypt = CRC4(Text, Key)

End Function

Private Sub Display(Text As String, Color As Long, Bold As Boolean)

    lbUsed.FontBold = Bold
    lbUsed.ForeColor = Color
    lbUsed = Text

End Sub

Private Function Encrypt(Text As String, Key As String) As String

    Encrypt = CRC4(Text, Key)

End Function

Private Sub Form_Initialize()

    InitCommonControls

End Sub

Private Sub Form_Load()

    CanQuit = True

    DroppedFilename = Command$
    If Len(DroppedFilename) Then
        DroppedFilename = Mid$(DroppedFilename, 2, Len(DroppedFilename) - 2) 'remove quotes at either end
        If InStr(DroppedFilename, """") = 0 Then
            If Len(Dir$(DroppedFilename)) Then 'user dropped a file onto the .exe icon
                btLoad_Click
            End If
          Else 'NOT INSTR(DROPPEDFILENAME,...
            MsgBox "Please drop only one file.", vbCritical
            DroppedFilename = vbNullString
        End If
    End If

End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)

    If CanQuit = False Then
        Cancel = (MsgBox(NoSave & "Quit anyway?", vbQuestion Or vbYesNo) = vbNo)
    End If

End Sub

Private Function ModifyFilename(Filename As String, Filetype As String) As String

  'Remove existing filetype if any and append new filetype if any

    i = InStrRev(Filename, ".")
    If i Then
        Filename = Left$(Filename, i - 1)
    End If
    ModifyFilename = Filename & IIf(Len(Filetype), "." & Filetype, vbNullString)

End Function

Private Sub opBpB_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

    picOrig.SetFocus

End Sub

Private Sub opBpP_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

    picOrig.SetFocus

End Sub

Private Function TextFits(NumChars As Long, Props As BITMAP) As Boolean

  Dim Percent As Single

    With Props
        Percent = 6400 * NumChars * Increment / .bmHeight / .bmWidth / .bmBitsPixel + 0.05
    End With 'PROPS
    If NumChars < 100000 And Percent <= 99.9 Then
        Display Format$(Percent, "0.0") & "% of available space used.", vbBlack, False
        TextFits = True
      Else 'NOT NUMCHARS...
        Display "Text too long / Picture too small.", vbRed, True
        TextFits = False
    End If

End Function

Private Sub txPW_Change()

    btLoad.Enabled = (Len(txPW) >= 4)

End Sub

Private Sub txPW_GotFocus()

    txPW_Change

End Sub

Private Sub rtfText_Change()

    lbText = "Text " & Len(rtfText.Text) & " bytes + " & Len(rtfText) - Len(rtfText.Text) & " formatting"

End Sub

Private Sub rtftext_KeyDown(KeyCode As Integer, Shift As Integer)

    Display "Text modified.", vbBlack, False

End Sub

':) Ulli's VB Code Formatter V2.14.7 (27.08.2002 11:18:33) 88 + 440 = 528 Lines

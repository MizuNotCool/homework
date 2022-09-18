VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00E3E3CE&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "calc.exe tapi di Visual Basic 6.0 | Kelompok 1 |  X TKJ"
   ClientHeight    =   5145
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   5415
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5145
   ScaleWidth      =   5415
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtSymbol 
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   240
      Locked          =   -1  'True
      TabIndex        =   24
      Top             =   240
      Width           =   735
   End
   Begin VB.TextBox txtOutput 
      Alignment       =   1  'Right Justify
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   450
      Left            =   720
      Locked          =   -1  'True
      TabIndex        =   23
      Text            =   "0"
      Top             =   600
      Width           =   4455
   End
   Begin VB.CommandButton cmdPlusMinus 
      Caption         =   "+/-"
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   120
      TabIndex        =   22
      Top             =   1200
      Width           =   1095
   End
   Begin VB.CommandButton cmdClear 
      Caption         =   "Clear"
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1320
      TabIndex        =   21
      Top             =   1200
      Width           =   2295
   End
   Begin VB.CommandButton cmdBackspace 
      Caption         =   "<--"
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3720
      TabIndex        =   20
      Top             =   1200
      Width           =   1575
   End
   Begin VB.CommandButton cmdSquareRoot 
      Caption         =   "SqrRoot"
      BeginProperty Font 
         Name            =   "Segoe UI Light"
         Size            =   8.25
         Charset         =   0
         Weight          =   300
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   4560
      TabIndex        =   19
      Top             =   3480
      Width           =   735
   End
   Begin VB.CommandButton cmdInverse 
      Caption         =   "1/x"
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   4560
      TabIndex        =   18
      Top             =   4320
      Width           =   735
   End
   Begin VB.CommandButton cmdPercentage 
      Caption         =   "%"
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   4560
      TabIndex        =   17
      Top             =   2640
      Width           =   735
   End
   Begin VB.CommandButton cmdDivide 
      Caption         =   "÷"
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   4560
      TabIndex        =   16
      Top             =   1800
      Width           =   735
   End
   Begin VB.CommandButton cmdMultiply 
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3720
      TabIndex        =   15
      Top             =   1800
      Width           =   735
   End
   Begin VB.CommandButton cmdSubtract 
      Caption         =   "-"
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3720
      TabIndex        =   14
      Top             =   2640
      Width           =   735
   End
   Begin VB.CommandButton cmdAdd 
      Caption         =   "+"
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1575
      Left            =   3720
      TabIndex        =   13
      Top             =   3480
      Width           =   735
   End
   Begin VB.CommandButton cmdEquals 
      Caption         =   "="
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   2520
      TabIndex        =   12
      Top             =   4320
      Width           =   1095
   End
   Begin VB.CommandButton cmdPoint 
      Caption         =   "."
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   1320
      TabIndex        =   11
      Top             =   4320
      Width           =   1095
   End
   Begin VB.CommandButton num 
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Index           =   0
      Left            =   120
      TabIndex        =   10
      Top             =   4320
      Width           =   1095
   End
   Begin VB.CommandButton num 
      Caption         =   "9"
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Index           =   9
      Left            =   2520
      TabIndex        =   9
      Top             =   3480
      Width           =   1095
   End
   Begin VB.CommandButton num 
      Caption         =   "8"
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Index           =   8
      Left            =   1320
      TabIndex        =   8
      Top             =   3480
      Width           =   1095
   End
   Begin VB.CommandButton num 
      Caption         =   "7"
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Index           =   7
      Left            =   120
      TabIndex        =   7
      Top             =   3480
      Width           =   1095
   End
   Begin VB.CommandButton num 
      Caption         =   "6"
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Index           =   6
      Left            =   2520
      TabIndex        =   6
      Top             =   2640
      Width           =   1095
   End
   Begin VB.CommandButton num 
      Caption         =   "5"
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Index           =   5
      Left            =   1320
      TabIndex        =   5
      Top             =   2640
      Width           =   1095
   End
   Begin VB.CommandButton num 
      Caption         =   "4"
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Index           =   4
      Left            =   120
      TabIndex        =   4
      Top             =   2640
      Width           =   1095
   End
   Begin VB.CommandButton num 
      Caption         =   "3"
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Index           =   3
      Left            =   2520
      TabIndex        =   3
      Top             =   1800
      Width           =   1095
   End
   Begin VB.CommandButton num 
      Caption         =   "2"
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Index           =   2
      Left            =   1320
      TabIndex        =   2
      Top             =   1800
      Width           =   1095
   End
   Begin VB.CommandButton num 
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Index           =   1
      Left            =   120
      TabIndex        =   1
      Top             =   1800
      Width           =   1095
   End
   Begin VB.TextBox txtInput 
      Alignment       =   1  'Right Justify
      BeginProperty Font 
         Name            =   "Segoe UI Light"
         Size            =   12
         Charset         =   0
         Weight          =   300
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   5175
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Function NumButton(NumKey As Integer)
    txtInput.Text = txtInput.Text & Str(NumKey)
End Function

Private Sub cmdAdd_Click()
    Calculate ("+")
End Sub

Private Sub cmdAdd_KeyPress(keyascii As Integer)
    KeyPress (keyascii)
End Sub

Private Sub cmdBackspace_Click()
    Calculate
    On Error Resume Next
    txtOutput.Text = Left(txtOutput.Text, Len(txtOutput.Text) - 1)
End Sub

Private Sub cmdBackspace_KeyPress(keyascii As Integer)
    KeyPress (keyascii)
End Sub

Private Sub cmdClear_Click()
    txtInput.Text = ""
    txtSymbol.Text = ""
    txtOutput.Text = "0"
End Sub

Private Sub cmdClear_KeyPress(keyascii As Integer)
    KeyPress (keyascii)
End Sub

Private Sub cmdDivide_Click()
    Calculate ("/")
End Sub

Private Sub cmdDivide_KeyPress(keyascii As Integer)
    KeyPress (keyascii)
End Sub

Private Sub cmdEquals_Click()
    Call Calculate
End Sub

Private Sub cmdEquals_KeyPress(keyascii As Integer)
    KeyPress (keyascii)
End Sub

Private Sub cmdInverse_Click()
    On Error Resume Next
    If txtOutput.Text = "0" Then
        txtOutput.Text = 1 / (Val(txtInput.Text))
    Else
        txtOutput.Text = 1 / (Val(txtOutput.Text))
    End If
    
    If Err = 11 Then
        MsgBox "Division by zero is invalid!", vbCritical, ""
        cmdClear_Click
    End If

    txtInput.Text = ""
End Sub

Private Sub cmdInverse_KeyPress(keyascii As Integer)
    KeyPress (keyascii)
End Sub

Private Sub cmdMultiply_Click()
    Calculate ("*")
End Sub

Private Sub cmdMultiply_KeyPress(keyascii As Integer)
    KeyPress (keyascii)
End Sub

Private Sub cmdPercentage_Click()
    If txtInput.Text <> "" Then
        txtOutput.Text = Val(txtOutput.Text) * Val(txtInput.Text) / 100
    End If
    txtInput.Text = ""
End Sub
Private Function Calculate(Optional symbol As String)
    Dim result As Double
    result = Val(txtOutput.Text)
        
    Select Case txtSymbol.Text
    Case "+"
        result = result + Val(txtInput.Text)
    Case "-"
        result = result - Val(txtInput.Text)
    Case "*"
        If txtInput.Text <> "" Then
            result = result * Val(txtInput.Text)
        End If
    Case "/"
        If txtInput <> "" Then
            On Error Resume Next
            result = result / Val(txtInput.Text)
        
            If Err = 11 Then
                MsgBox "Division by zero is invalid!", vbCritical, ""
                cmdClear_Click
                Exit Function
            End If
        End If
    Case ""
        If txtInput.Text <> "" Then
            result = Val(txtInput.Text)
        End If
    End Select
    
    txtInput.Text = ""
    txtOutput.Text = result
    txtSymbol.Text = symbol
End Function

Private Sub cmdPercentage_KeyPress(keyascii As Integer)
    KeyPress (keyascii)
End Sub

Private Sub cmdPlusMinus_Click()
    If txtInput.Text <> "" Then
        txtInput.Text = 0 - Val(txtInput.Text)
    ElseIf txtOutput <> "" Then
        txtOutput.Text = 0 - Val(txtOutput.Text)
    End If
End Sub

Private Sub cmdPlusMinus_KeyPress(keyascii As Integer)
    KeyPress (keyascii)
End Sub

Private Sub cmdPoint_Click()
    txtInput.Text = txtInput.Text & "."
End Sub

Private Sub cmdPoint_KeyPress(keyascii As Integer)
    KeyPress (keyascii)
End Sub

Private Sub cmdSquareRoot_Click()
    If txtOutput.Text = "0" Then
        txtOutput.Text = Sqr(Val(txtInput.Text))
    Else
        txtOutput.Text = Sqr(Val(txtOutput.Text))
    End If
    
    txtInput.Text = ""
End Sub

Private Sub cmdSquareRoot_KeyPress(keyascii As Integer)
    KeyPress (keyascii)
End Sub

Private Sub cmdSubtract_Click()
    Calculate ("-")
End Sub

Private Sub cmdSubtract_KeyPress(keyascii As Integer)
    KeyPress (keyascii)
End Sub

Private Sub num_Click(Index As Integer)
r    Call NumButton(Index)
End Sub

Private Sub num_KeyPress(Index As Integer, keyascii As Integer)
    KeyPress (keyascii)
End Sub
Private Sub KeyPress(keyascii As Integer)
    Select Case keyascii
    
    Case vbKey0 To vbKey9
        NumButton Val(Chr(keyascii))
    Case vbKeyBack
        cmdBackspace_Click
    Case vbKeyDivide
        cmdDivide_Click
    Case vbKeyMultiply
        cmdMultiply_Click
    Case vbKeySubtract
        cmdSubtract_Click
    Case vbKeyAdd
        cmdAdd_Click
    Case vbKeyReturn
        Calculate
    Case 46
        cmdPoint_Click
    End Select

End Sub


Private Sub txtInput_GotFocus()
    cmdEquals.SetFocus
End Sub

Private Sub txtOutput_GotFocus()
    cmdEquals.SetFocus
End Sub

Private Sub txtSymbol_GotFocus()
    cmdEquals.SetFocus
End Sub

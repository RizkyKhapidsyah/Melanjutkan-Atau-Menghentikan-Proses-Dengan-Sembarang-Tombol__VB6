VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Melanjutkan atau Menghentikan Proses dengan Sembarang Tombol "
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   9135
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   9135
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Left            =   720
      Top             =   2400
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      Height          =   375
      Left            =   2640
      TabIndex        =   1
      Top             =   840
      Width           =   3615
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   255
      Left            =   2760
      TabIndex        =   0
      Top             =   360
      Width           =   3375
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim StatusLanjut As Boolean

Private Sub Form_KeyPress(KeyAscii As Integer)
  If StatusLanjut = False Then
     Timer1.Enabled = True
     StatusLanjut = True
     Label1.Caption = "Press any key to stop..."
  ElseIf StatusLanjut = True Then
     Timer1.Enabled = False
     StatusLanjut = False
     Label1.Caption = "Press any key to continue.."
  End If
End Sub

Private Sub Form_Load()
  Label1.Caption = "Press any key to continue..."
  Label2.Caption = Time
  Timer1.Interval = 500
  Timer1.Enabled = False
  StatusLanjut = False
End Sub

Private Sub Timer1_Timer()
  Label2.Caption = Time
End Sub


VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "Direct3DVertexDeclaration"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Private Declare Sub decl_Release Lib "dx_vb" (ByVal pDecl As Long)

Private mePtr As Long

Private Sub Class_Terminate()
  If Ptr <> 0 Then
    decl_Release Ptr
  End If
End Sub

Public Property Let Ptr(p As Long)
  If mePtr <> 0 Then decl_Release mePtr
  mePtr = p
End Property

Public Property Get Ptr() As Long
  Ptr = mePtr
End Property

Public Class Berandapub
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim k As New KoneksiDB
        k.CekKoneksi()
    End Sub

End Class
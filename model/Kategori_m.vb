Public Class Kategori_m
    'Dim idkat As Integer
    'Dim kategori As String

    'Public Sub Tambah()

    'End Sub

    'Public Sub Ubah()

    'End Sub

    'Public Sub Hapus()

    'End Sub

    Public Function Lihat() As DataTable
        Dim dt As New DataTable
        Dim query As String = "SELECT idkat AS ID, KATEGORI FROM kategori"

        'create object k
        Dim k As New KoneksiDB
        dt = k.GetResult(query)

        Return dt
    End Function

    'Public Sub SetIDKat()

    'End Sub

    'Public Sub SetKategori()

    'End Sub
End Class

Imports MySql.Data.MySqlClient
Public Class KoneksiDB
    Dim username, password, server, database As String
    Dim mycn As MySqlConnection
    Dim mydata As MySqlDataAdapter

    Public Sub New()
        username = "root"
        password = ""
        server = "localhost"
        database = "db_polis"

        Dim con_str As String
        con_str = "user=" & username & ";"
        con_str &= "pwd=" & password & ";"
        con_str &= "server=" & server & ";"
        con_str &= "database=" & database

        mycn = New MySqlConnection(con_str)
    End Sub
    Public Sub CekKoneksi()
        Try
            mycn.Open()
            mycn.Close()
            MsgBox("Koneksi Berhasil")
        Catch ex As Exception
            If mycn.State = ConnectionState.Open Then
                mycn.Open()
            End If
            MsgBox("Koneksi Gagal")
        End Try
    End Sub

    Public Function GetResult(query As String) As DataTable
        Dim dt As New DataTable

        Try
            mycn.Open()
            mydata = New MySqlDataAdapter(query, mycn)
            mydata.Fill(dt)
            mycn.Close()
        Catch ex As Exception
            If mycn.State = ConnectionState.Open Then
                mycn.Open()
            End If
            MsgBox("Data tidak dapat ditampilkan, kemungkinan ada permasalahan terkait koneksi database. Hubungi admin!", MsgBoxStyle.Information, "Informasi")
        End Try

        Return dt
    End Function

End Class

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
            MsgBox("Koneksi Berhasil")
        Catch ex As Exception
            MsgBox("Koneksi Gagal: " & ex.Message)
        Finally
            ' Pastikan koneksi ditutup jika terbuka
            If mycn.State = ConnectionState.Open Then
                mycn.Close()
            End If
        End Try
    End Sub

    Public Function GetResult(query As String) As DataTable
        Dim dt As New DataTable

        Try
            ' Periksa dan tutup koneksi jika terbuka
            If mycn.State = ConnectionState.Open Then
                mycn.Close()
            End If

            ' Buka koneksi
            mycn.Open()

            ' Eksekusi query
            mydata = New MySqlDataAdapter(query, mycn)
            mydata.Fill(dt)

        Catch ex As Exception
            MsgBox("Data tidak dapat ditampilkan, kemungkinan ada permasalahan terkait koneksi database. Hubungi admin! Error: " & ex.Message, MsgBoxStyle.Information, "Informasi")
        Finally
            ' Tutup koneksi
            If mycn.State = ConnectionState.Open Then
                mycn.Close()
            End If
        End Try

        Return dt
    End Function
End Class

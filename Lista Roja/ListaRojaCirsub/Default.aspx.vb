Imports Microsoft.VisualBasic
Imports System.Data
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim dsImagen As New DataSet
        dsImagen = GetDataset()
        Me.RepeaterImagen.DataSource = dsImagen
        Me.RepeaterScript.DataSource = dsImagen
        Me.RepeaterImagen.DataBind()
        Me.RepeaterScript.DataBind()
    End Sub

    Private Function GetDataset() As Data.DataSet
        'Esta funcion simula una consulta a la base de datos.
        'Retornamos un dataset como si se hiciera un select a una tabla 
        'con los datos correspondientes para mostrar las imagenes.
        Dim ds As New Data.DataSet
        Dim dt As New Data.DataTable
        dt.Columns.Add(New DataColumn("codigo_imagen", GetType(Integer)))
        dt.Columns.Add(New DataColumn("titulo_imagen", GetType(String)))
        dt.Columns.Add(New DataColumn("descripcion_imagen", GetType(String)))
        dt.Columns.Add(New DataColumn("path_imagen", GetType(String)))

        Dim dr As DataRow
       
        dr = dt.NewRow
        dr("codigo_imagen") = 1
        dr("titulo_imagen") = "Vicepresidente - Secretario - Pro Secretario"
        dr("descripcion_imagen") = "Castañon - Gonzalez - Peréz"
        dr("path_imagen") = "images/Foto1_Alt.jpg"
        dt.Rows.Add(dr)
        dr = dt.NewRow
        dr("codigo_imagen") = 2
        dr("titulo_imagen") = "Usted puede volver a creer en esta mutual"
        dr("descripcion_imagen") = "Elecciones 21 de Mayo"
        dr("path_imagen") = "images/listaroja.jpg"
        dt.Rows.Add(dr)

        dr = dt.NewRow
        dr("codigo_imagen") = 3
        dr("titulo_imagen") = "Tesorero - Vocal 2"
        dr("descripcion_imagen") = "Ramirez - Reyes"
        dr("path_imagen") = "images/Foto2.jpg"
        dt.Rows.Add(dr)

        dr = dt.NewRow
        dr("codigo_imagen") = 4
        dr("titulo_imagen") = "Compromiso"
        dr("descripcion_imagen") = "El socio y su familia"
        dr("path_imagen") = "images/organizacion2.jpg"
        dt.Rows.Add(dr)
        ds.Tables.Add(dt)

        Return ds
    End Function
    
End Class

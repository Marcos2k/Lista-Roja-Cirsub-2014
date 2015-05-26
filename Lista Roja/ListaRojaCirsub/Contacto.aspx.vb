Imports System.Net.Mail 'importamos librerias para mandar emails
Imports System.Configuration
Partial Class Contacto
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        TBAsunto.Focus()
    End Sub

    Private Sub Limpiar()
        'limpia las cajas de texto
        TBAsunto.Text = ""
        TBNombre.Text = ""
        TBEmail.Text = ""
        TBMensaje.Text = ""
    End Sub

    Private Sub Enviar(ByVal Asunto As String, ByVal Nombre As String, ByVal Correo As String, ByVal Mensaje As String)
            Dim t As String = ConfigurationManager.AppSettings("To") 'To = Para
            Dim Mail As New MailMessage
            Mail.To.Add(New MailAddress(t))
            Mail.From = New MailAddress(Correo + Nombre)
            Mail.Subject = (Asunto)
            Mail.Body = Mensaje + vbLf + Nombre + vbLf + Correo

            Dim smtp As New SmtpClient
            smtp.Send(Mail)

            Limpiar()
            Response.Write("<script language='JavaScript'>alert('Mensaje Enviado Correctamente!!!');</script>")
            LblAviso.Text = "Mensaje Enviado gracias por tomarse el tiempo de escribir,estaremos respondiendote en breve!"



    End Sub
    Protected Sub BtnEnviar_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles BtnEnviar.Click
        If TBAsunto.Text <> "" And TBNombre.Text <> "" And TBEmail.Text <> "" And TBMensaje.Text <> "" Then
            Try
                Enviar(TBAsunto.Text, TBNombre.Text, TBEmail.Text, TBMensaje.Text)
            Catch ex As Exception
                Response.Write("<script language='JavaScript'>alert('Error no se Pudo Enviar el Mensaje,intenta nuevamente!!!');</script>")
                Response.Write("<script language='JavaScript')alert('Hola')alert;</script>")
            End Try
        Else
            'Avisa el error
            LblAviso.Text = "Campos incompletos,por favor completalos"

        End If
    End Sub
End Class

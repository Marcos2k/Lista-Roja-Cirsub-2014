<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Contacto.aspx.vb" Inherits="Contacto" %>
<%@ Register TagPrefix="recaptcha" Namespace="Recaptcha" Assembly="Recaptcha" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        #TextArea1
        {
            height: 88px;
            width: 335px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center><p style="height: 21px">Si Usted desea comunicarse con nosotros, tiene alguna duda ó le gustaria informarse más, puede hacerlo mediante este formulario completando sus datos</p></center>
     <div style="height: 343px">
     <!--Formulario de contacto-->
     <center style="height: 319px" >
         Titulo/Asunto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="TBAsunto" runat="server"></asp:TextBox>
         <br />
     
         Su nombre&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="TBNombre" runat="server"></asp:TextBox>
         <br />
       
         Correo electronico
         <asp:TextBox ID="TBEmail" runat="server"></asp:TextBox>
        
         <br />
        
         Mensaje<br />
         <asp:TextBox ID="TBMensaje" runat="server" Height="110px" TextMode="MultiLine" 
             Width="270px"></asp:TextBox>
         <br />
         
         <asp:Button ID="BtnEnviar" runat="server" Text="Enviar" Width="100px" />
         <asp:Label ID="LblAviso" runat="server"></asp:Label>
         <br />
         </center>
     </div>
     <br />
        <div>
        <br />
        <center>Todos los campos son obligatorios</center>
    <center>
        <p>
    Entendemos el valor que le das a tu datos personales, ni divulgaremos ningun tipo informacion, esto nos sirve para poder comunicarnos contigo</p>
    </center>
    </div>
</asp:Content>


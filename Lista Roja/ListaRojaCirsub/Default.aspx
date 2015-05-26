<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>
<%@ Register TagPrefix="recaptcha" Namespace="Recaptcha" Assembly="Recaptcha" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            font-family:Arial;
            text-decoration: underline;
        }
    </style>
   </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="height: 235px">
<div id="header"><div class="wrap">
   <div id="slide-holder">
<div id="slide-runner">
    <asp:Repeater ID="RepeaterImagen" runat="server">
        <ItemTemplate>        
            <a href=""><img id='slide-img-<%#Eval("codigo_imagen")%>' src='<%#Eval("path_imagen")%>'  class="slide" alt="" /></a>
        </ItemTemplate>
    </asp:Repeater>     
    
    <div id="slide-controls">
     <p id="slide-client" class="text"><strong>Foto: </strong><span></span></p>
     <p id="slide-desc" class="text"></p>
     <p id="slide-nav"></p>
    </div>
</div>
</div></div>
</div>
       <asp:Repeater ID="RepeaterScript" runat="server">
       <HeaderTemplate>
       <% Response.Write("<script type=""text/javascript"">" & vbCrLf)%>
       <% Response.Write("if (!window.slider) var slider = {};" & vbCrLf)%>
       <% Response.Write("slider.data = [")%>              
       </HeaderTemplate>
        <ItemTemplate>  
            { "id": "slide-img-<%# Eval("codigo_imagen")%>", "client": "<%#Eval("titulo_imagen")%>", "desc": "<%#Eval("descripcion_imagen")%>" }      
        </ItemTemplate>
        <SeparatorTemplate>,</SeparatorTemplate>
        <FooterTemplate><%Response.Write("];</script>")%></FooterTemplate>
    </asp:Repeater>  
</div>
 <br />
             <br />
             <br />
             <br />
      <div style="height: 225px">
      <!--Texto-Postulantes-->
              <center class="postulantes">CANDIDATOS</center>
              <br />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              Presidente: Subof My (R) Marcial Hector,VELARDES&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pro 
          Tesorero:&nbsp;&nbsp; Sarg 1ro Gabriel VERÓN -AgruSal-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style5">JUNTA FISCALIZADORA</span><br />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              Vice Presidente:Subof My  Tomas CASTAÑON -Agrumen-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vocal 
          1ro: Sarg Ay Carmelo SALINAS -Movil II-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Presidente:Subof Pr (R) Pedro José GIMENEZ&nbsp;
              <br />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Secretario: Sarg Ay Ruben Anibal GONZALEZ 
          -Escusub-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vocal 
          2do:Subof My Alcadio Raymundo REYES -Esc 10 &quot;El Dorado&quot;-&nbsp;&nbsp;&nbsp; Secretario: Subof Pr Pedro MONTIEL -Campo de Mayo-<br />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              Pro Secretario: Cbo 1ro Eduardo Ariel PEREZ -Direman-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vocal 
          3ro: Sarg 1ero Pedro DUARTE -Esc 19 &quot;Ing. Juarez-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vocal 
          1ro: Humberto Gaspar DÍAZ -Movil V- <br />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              Tesorero: Subof My (R) Francisco Armando RAMIREZ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vocal 
          4to: Subof Pr (R) Jorge Martin Alvarez&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vocal 2do: Sarg Ay Ignacion David ARANDA -Min de Seguridad-</div>
</asp:Content>


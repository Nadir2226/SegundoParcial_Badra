<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="SegundoParcial_Badra.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    &nbsp;</p>
<p>
    REGISTRACIÓN</p>
<p>
    &nbsp;</p>
<p>
    Usuario:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtUsuario" runat="server" Width="285px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Escribir el nombre de usuario" ControlToValidate="txtUsuario" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
</p>
<p>
    Mail:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtMail" runat="server" Width="283px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Escribir la dirección de mail" ControlToValidate="txtMail" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Respete el formato nombredeusuario@dominio.com." ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" ControlToValidate="txtMail" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
</p>
<p>
    Edad:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtEdad" runat="server" TextMode="Number"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEdad" ErrorMessage="Ingrese la edad" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="La edad debe ser igual o mayor a 16 años" MaximumValue=99 MinimumValue=16 ControlToValidate="txtEdad" ForeColor="Red" Display ="Dynamic"></asp:RangeValidator>
</p>
<p>
    Contraseña:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtPassword" runat="server" Width="278px" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Escribir la contraseña" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p>
    Repita la contraseña:<asp:TextBox ID="txtPasswordConfirm" runat="server" Width="277px" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Escriba nuevamente la contraseña" ControlToValidate="txtPasswordConfirm" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ErrorMessage="No coinciden las contraseñas" ControlToValidate="txtPasswordConfirm" ForeColor="Red"></asp:CompareValidator>
&nbsp;</p>
<p>
    &nbsp;</p>
<p>
    <asp:Button ID="btnRegistro" runat="server" Text="Registro" OnClick="btnRegistro_Click" />
</p>
    <asp:Label ID="lblInfo" runat="server" Text=""></asp:Label>

<p>
    &nbsp;</p>
</asp:Content>

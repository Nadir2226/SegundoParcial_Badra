<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Archivos.aspx.cs" Inherits="SegundoParcial_Badra.Archivos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
        <div>
            <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="True" />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
         
<asp:Button ID="btnGuardar" runat="server"  Text="Guardar" OnClick="btnGuardar_Click" />
               <br />
            <asp:Label ID="lblInfo" runat="server" Text=""></asp:Label>
            <br />
            <asp:GridView ID="GridArchivos" runat="server" OnRowCommand="GridArchivos_RowCommand">
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="Descargar" HeaderText="Descargar" ShowHeader="True" Text="Descargar" />
                </Columns>
            </asp:GridView>
            
        </div>

</asp:Content>

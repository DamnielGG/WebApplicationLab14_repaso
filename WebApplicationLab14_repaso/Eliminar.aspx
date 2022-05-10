<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Eliminar.aspx.cs" Inherits="WebApplicationLab14_repaso.Eliminar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        ELIMINAR</p>
    <p>
        Codigo de libro:</p>
    <p>
        <asp:TextBox ID="TextBoxCodigoLibro" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar Codigo" />
    </p>
    <p>
        Nombre del libro:</p>
    <p>
        <asp:TextBox ID="TextBoxNombreLibro" runat="server"></asp:TextBox>
    </p>
    <p>
        Descripción del libro:
    </p>
    <p>
        <asp:TextBox ID="TextBoxDescripcionLibro" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Eliminar libro" />
    </p>
</asp:Content>

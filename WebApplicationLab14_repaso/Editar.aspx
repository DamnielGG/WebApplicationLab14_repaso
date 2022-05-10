<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Editar.aspx.cs" Inherits="WebApplicationLab14_repaso.Editar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        Actualizar datos de libro</p>
    <p>
        Ingrese codigo del libro:</p>
    <p>
        <asp:TextBox ID="TextBoxCodigoLibroEditar" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar libro" />
    </p>
    <p>
        Nombre del libro:</p>
    <p>
        <asp:TextBox ID="TextBoxNombreLibroEditar" runat="server"></asp:TextBox>
    </p>
    <p>
        Descripción del libro:</p>
    <p>
        <asp:TextBox ID="TextBoxDescripcionLibroEditar" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Actualizar datos" />
    </p>
</asp:Content>
